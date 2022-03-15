<template>
  <div class="row">
    <q-list>
      <q-expansion-item
        expand-separator
        icon="settings"
        label="Table settings"
        dense
        popup
      >
        <TableSettingsColumnSelector />
      </q-expansion-item>
    </q-list>
    <div>
      <q-btn outline size="md" no-caps label="Show MaNGA" @click="showMaNGA" />
    </div>
    <TableSettingsControlCutouts />
  </div>
</template>

<script>
import { defineComponent, computed } from 'vue'
import { useStore } from 'vuex'
import TableSettingsColumnSelector from 'components/TableSettingsColumnSelector'
import TableSettingsControlCutouts from 'components/TableSettingsControlCutouts'
export default defineComponent({
  components: { TableSettingsColumnSelector, TableSettingsControlCutouts },
  setup() {
    const store = useStore()

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

    const showMaNGA = (evt) => {
      const tableStatus = computed(() => store.state.tableStatus)
      if (tableStatus.value == 'loading') {
        console.log('Previous request is not finished yet!')
      } else {
        // Before requesting data, reset all messages
        store.commit('setTableMessage', '')
        store.commit('setTableStatus', null)
        store.commit('setSesameStatus', null)
        store.commit('setSesameMessage', '')
        store.commit('setQueryString', 'p3d != null')
        store.dispatch('fetchTable')
      }
    }

    return { streamNodes, showMaNGA }
  },
})
</script>
