<template>
  <q-table
    :rows="tableDataResults"
    row-key="id"
    :rows-per-page-options="[10, 20, 30, 50, 70, 100, 200, 300, 400, 500]"
    v-model:pagination="tablePagination"
    :loading="tableStatus === 'loading'"
    @request="onRequest"
    dense
    bordered
    flat
    binary-state-sort
    class="q-mb-xl"
  >
    <template v-slot:top>
      <div class="row fit justify-start">
        <!-- <q-list>
          <q-expansion-item
            expand-separator
            icon="settings"
            label="Table settings"
            dense
            popup
          >
            <TableSettingsColumnSelector />
          </q-expansion-item>
        </q-list> -->

        <q-tree
          :nodes="streamNodes"
          node-key="msg"
          label-key="msg"
          class="q-ml-lg"
        >
          <template v-slot:default-header="prop">
            <div class="row items-center">
              <q-icon
                :name="prop.node.icon"
                :color="prop.node.color"
                class="q-mr-sm"
              />
              {{ prop.node.msg }}
            </div>
          </template>
        </q-tree>
      </div>
    </template>

    <template v-slot:header="props">
      <q-tr :props="props">
        <q-th auto-width />
        <q-th v-for="col in props.cols" :key="col.name" :props="props">
          {{ col.label }}
          <q-tooltip :delay="500" class="bg-grey-3 text-black">{{
            col.field.includes('p3d.')
              ? tableColumnsDescription[col.field]
              : tableColumnsDescription[`lotss.${col.field}`]
          }}</q-tooltip>
        </q-th>
      </q-tr>
    </template>

    <template v-slot:body="props">
      <q-tr :props="props">
        <q-td auto-width>
          <q-btn
            size="sm"
            color="primary"
            round
            dense
            @click="props.expand = !props.expand"
            :icon="props.expand || expandAll ? 'remove' : 'add'"
          />
        </q-td>
        <q-td v-for="col in props.cols" :key="col.name" :props="props">
          <div v-if="col.name == 'p3d.plateifu'">
            <a
              :href="`https://manga.voxastro.org/visualiser/${col.value}`"
              target="_blank"
              >{{ col.value }}</a
            >
          </div>
          <div v-else>
            {{ col.value }}
          </div>
        </q-td>
      </q-tr>
      <q-tr
        v-if="props.expand || expandAll"
        :props="props"
        :key="`e_${props.row.source_id}`"
        class="q-virtual-scroll--with-prev"
      >
        <q-td colspan="100%">
          <div>
            <q-img
              :src="`https://skyserver.sdss.org/dr16/SkyServerWS/ImgCutout/getjpeg?TaskName=Skyserver.Explore.Image&ra=${props.row.ra}&dec=${props.row.dec}&scale=${scale}&width=${size}&height=${size}&opt=G`"
              spinner-color="white"
              :style="`height: ${size}px; width: ${size}px`"
              class="q-mx-md"
            >
              <div class="absolute-bottom-right text-subtitle2">SDSS</div>
            </q-img>
            <q-img
              :src="`https://api.manga.voxastro.org/legacysurveyViewer/cutout.jpg?ra=${props.row.ra}&dec=${props.row.dec}&pixscale=${scale}&width=${size}&height=${size}`"
              spinner-color="white"
              :style="`height: ${size}px; width: ${size}px`"
              class="q-mx-md"
            >
              <div class="absolute-bottom-right text-subtitle2">
                Legacy Survey
              </div>
            </q-img>
            <q-img
              :src="`https://www.legacysurvey.org/viewer/cutout.jpg?ra=${props.row.ra}&dec=${props.row.dec}&layer=vlass1.2&pixscale=${scale}&width=${size}&height=${size}`"
              spinner-color="white"
              :style="`height: ${size}px; width: ${size}px`"
              class="q-mx-md"
            >
              <div class="absolute-bottom-right text-subtitle2">VLASS</div>
            </q-img>
            <q-img
              :src="`https://alasky.u-strasbg.fr/hips-image-services/hips2fits?ra=${
                props.row.ra
              }&dec=${
                props.row.dec
              }&hips=https://lofar-surveys.org/public_hips/LoTSS_DR2_high_hips&width=${size}&height=${size}&format=jpg&fov=${
                fov / 3600.0
              }`"
              spinner-color="white"
              :style="`height: ${size}px; width: ${size}px`"
              class="q-mx-md"
            >
              <div class="absolute-bottom-right text-subtitle2">LoTSS HR</div>
            </q-img>
            <q-img
              :src="`https://alasky.u-strasbg.fr/hips-image-services/hips2fits?ra=${
                props.row.ra
              }&dec=${
                props.row.dec
              }&hips=https://lofar-surveys.org/public_hips/LoTSS_DR2_low_hips&width=${size}&height=${size}&format=jpg&fov=${
                fov / 3600.0
              }`"
              spinner-color="white"
              :style="`height: ${size}px; width: ${size}px`"
              class="q-mx-md"
            >
              <div class="absolute-bottom-right q-py-sm text-subtitle2">
                LoTSS LR
              </div>
            </q-img>
          </div>
        </q-td>
      </q-tr>
    </template>
    <!-- <template v-slot:body-cell-cube_id="props">
      <q-td :props="props">
        <router-link :to="{ name: 'cube', params: { cube_id: props.value } }">{{
          props.value
        }}</router-link>
      </q-td>
    </template> -->
  </q-table>
</template>

<script>
import { defineComponent, ref, computed, onMounted } from 'vue'
import { useStore } from 'vuex'
import TableSettingsColumnSelector from 'components/TableSettingsColumnSelector'

export default defineComponent({
  components: {},
  setup() {
    const store = useStore()

    const tableStatus = computed(() => store.state.tableStatus)
    const tableMessage = computed(() => store.state.tableMessage)
    const sesameStatus = computed(() => store.state.sesameStatus)
    const sesameMessage = computed(() => store.state.sesameMessage)
    const tableDataResults = computed(() => store.state.tableData.results)

    const tablePagination = computed({
      get() {
        return store.state.tablePagination
      },
      set(value) {
        store.commit('setTablePagination', value)
      },
    })

    onMounted(() => {
      if (tableStatus.value === null) {
        store.dispatch('fetchTable')
      }
    })

    const submitQuery = () => {
      store.dispatch('fetchTable')
    }

    const onRequest = (props) => {
      store.commit('setTablePagination', props.pagination)
      store.dispatch('fetchTable')
    }

    // convert stream to nodes
    const stream = computed(() => store.state.activityStream)

    const streamNodes = computed(() => {
      // const stream = store.state.activityStream
      const nodes = store.state.activityStream.map((item) => {
        const d = new Date(item.date)

        let meta
        if (item.status == 'error') {
          meta = { icon: 'error', color: 'negative' }
        } else if (item.status == 'unresolved') {
          meta = { icon: 'warning', color: 'warning' }
        } else if (item.status == 'loaded' || item.status == 'resolved') {
          meta = { icon: 'info', color: 'positive' }
        } else if (item.status == 'loading' || item.status == 'resolving') {
          meta = { icon: 'loop', color: 'grey-7' }
        }

        return {
          msg: `${d.toISOString().replace('T', ' ').replace('Z', '')} - ${
            item.msg
          }`,
          ...meta,
        }
      })

      const sn =
        nodes.length > 0
          ? [
              {
                ...nodes[0],
                msg: nodes[0].msg.split(' - ')[1],
                children: nodes.slice(1),
              },
            ]
          : []
      return sn
    })

    const expandAll = computed(() => store.state.cutoutExpandAll)
    const size = computed(() => store.state.cutoutSize)
    const fov = computed(() => store.state.cutoutFOV)
    const scale = computed(() => fov.value / size.value)

    const tableColumnsList = computed(() => store.state.tableColumnsObject)
    const tableColumnsDescription = computed(
      () => store.state.tableColumnsDescription
    )
    const tableColumnsObject = tableColumnsList.value.reduce(
      (a, v) => ({ ...a, [v.label]: v }),
      {}
    )

    // const columnDescription = [
    //   ...tableColumnsList.value[0].children,
    //   ...tableColumnsList.value[1].children,
    // ].reduce((res, value) => ({
    //   ...res,
    //   [value.key]: value.description,
    // }))

    return {
      size,
      scale,
      fov,
      expandAll,
      tableStatus,
      tableMessage,
      sesameStatus,
      sesameMessage,
      tableDataResults,
      tableColumnsDescription,
      tablePagination,
      tableColumnsObject,
      stream,
      streamNodes,
      onRequest,
    }
  },
})
</script>
