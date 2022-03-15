from django.urls import path, re_path

from rest_framework import permissions
from drf_yasg.views import get_schema_view
from drf_yasg import openapi


from django.contrib import admin
from django.urls import path, re_path, include
from django.conf import settings

from django.views.decorators.csrf import csrf_exempt
from rest_framework import routers
# from ifuapp import representations as rep
from app import models, views
from drf_yasg.generators import OpenAPISchemaGenerator

# Setup OpenAPI generator and cutomize it


class CustomOpenAPISchemaGenerator(OpenAPISchemaGenerator):
    def get_schema(self, request=None, public=False):
        """Generate a :class:`.Swagger` object with Model description field"""

        swagger = super().get_schema(request, public)

        for name, schema in swagger.definitions.items():
            model = getattr(models, name)
            schema['description'] = model.__doc__
            schema['table_name'] = model._meta.db_table

        return swagger


schema_view = get_schema_view(
    openapi.Info(
        title="LoTSS Application API",
        default_version='v1',
        description="API of the service for lotss.voxastro.org service.",
        contact=openapi.Contact(email="admin@voxastro.org"),
    ),
    generator_class=CustomOpenAPISchemaGenerator,
    public=True,
    permission_classes=[permissions.AllowAny],
)


router = routers.DefaultRouter()
router.register(r'lotss', views.LotssViewSet, basename="lotss")
router.register(r'p3d', views.P3DViewSet,
                basename="p3d")

urlpatterns = [
    path('', include(router.urls)),
    re_path(r'swagger(?P<format>\.json|\.yaml)$',
            schema_view.without_ui(cache_timeout=0), name='schema-json'),
    path('swagger/', schema_view.with_ui('swagger', cache_timeout=0),
         name='schema-swagger-ui'),
    path('redoc/', schema_view.with_ui('redoc', cache_timeout=0),
         name='schema-redoc'),
]
