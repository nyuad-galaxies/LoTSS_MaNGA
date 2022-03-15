from rest_framework import viewsets, serializers
from rest_flex_fields import FlexFieldsModelSerializer

from app.pagination import EnhancedPageNumberPagination
from app.models import Lotss, P3D
from app.utils import apply_search
###############################################################################
# REST DRF representation (Serializers and ViewSets)


class P3DSerializer(FlexFieldsModelSerializer):
    class Meta:
        model = P3D
        fields = '__all__'


class P3DViewSet(viewsets.ReadOnlyModelViewSet):
    __doc__ = P3D.__doc__
    queryset = P3D.objects.all()
    pagination_class = EnhancedPageNumberPagination
    serializer_class = P3DSerializer


class LotssSerializer(FlexFieldsModelSerializer):
    dist = serializers.SerializerMethodField()

    class Meta:
        model = Lotss

        # hide related fields to avoid field duplication
        fields = [
            f.name for f in Lotss._meta.fields if f.related_model is None] + ['dist', ]

        expandable_fields = {
            'p3d': (P3DSerializer, {'many': False}),
        }

    def get_dist(self, obj):
        try:
            return obj.dist
        except:
            return None


class LotssViewSet(viewsets.ReadOnlyModelViewSet):
    __doc__ = Lotss.__doc__

    pagination_class = EnhancedPageNumberPagination
    serializer_class = LotssSerializer

    def get_queryset(self):
        search_query = self.request.query_params.get('q', False)
        sortby = self.request.query_params.get('sortby', 'id')
        # in case sort by related field
        sortby = sortby.replace('.', '__')
        descending = self.request.query_params.get('descending', 'false')

        if descending == 'true':
            sortby = f"-{sortby}"

        relations = (
            'p3d',
        )

        qsall = Lotss.objects.all().select_related(*relations)

        if search_query:
            return apply_search(qsall, search_query).order_by(sortby)
        else:
            return qsall.order_by(sortby)

    # def list(self, request):
    #     queryset = self.get_queryset()
    #     queryset_paginated = self.paginate_queryset(queryset)
    #     omit = ['spectrum', 'fov_fits', 'fov_ifu']
    #     serializer = self.serializer_class(queryset_paginated, many=True,
    #                                        context={'request': request},
    #                                        omit=omit)
    #     return self.get_paginated_response(serializer.data)

    # def retrieve(self, request, pk=None):
    #     queryset = self.get_queryset()
    #     cube = get_object_or_404(queryset, pk=pk)
    #     serializer = self.serializer_class(cube, context={'request': request})
    #     return response.Response(serializer.data)
