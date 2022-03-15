<template>
  <div class="q-mr-xl">
    <q-toggle v-model="expandAll" label="Expand all rows" />
  </div>
  <div class="q-mr-xl">
    Image size: {{ size }}px
    <q-slider
      :model-value="size"
      @change="
        (val) => {
          size = val
        }
      "
      :min="10"
      :max="1000"
      :step="1"
      color="primary"
      label
    />
  </div>
  <div class="q-mr-xl">
    Field-of-View: {{ fov }}arcsec
    <q-slider
      :model-value="fov"
      @change="
        (val) => {
          fov = val
        }
      "
      :min="6"
      :max="600"
      :step="1"
      color="primary"
      label
    />
  </div>
  <div class="q-mr-xl">Scale: {{ scale.toFixed(3) }} pix/arcsec</div>
</template>

<script>
import { defineComponent, ref, computed, onMounted } from 'vue'
import { useStore } from 'vuex'

export default defineComponent({
  name: 'TableSettingsColumnSelector',
  setup() {
    const store = useStore()

    const schema = computed(() => store.state.schema)
    const tableColumns = computed(() => store.state.tableColumnsObject)
    const tableColumnsTicked = computed({
      get() {
        return store.state.tableColumnsTicked
      },
      set(value) {
        store.commit('setTableColumnsTicked', value)
      },
    })

    const refetchTable = (target) => {
      store.dispatch('fetchTable')
    }

    const size = computed({
      get() {
        return store.state.cutoutSize
      },
      set(value) {
        store.commit('setCutoutSize', value)
      },
    })

    const expandAll = computed({
      get() {
        return store.state.cutoutExpandAll
      },
      set(value) {
        store.commit('setCutoutExpandAll', value)
      },
    })

    const fov = computed({
      get() {
        return store.state.cutoutFOV
      },
      set(value) {
        store.commit('setCutoutFOV', value)
      },
    })

    const scale = computed(() => fov.value / size.value)
    return {
      expandAll,
      size,
      scale,
      fov,
      schema,
      tableColumns,
      tableColumnsTicked,
      refetchTable,
    }
  },
})
</script>
