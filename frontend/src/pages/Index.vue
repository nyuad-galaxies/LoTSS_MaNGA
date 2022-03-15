<template>
  <q-page>
    <div class="row justify-between items-baseline">
      <SearchInput
        class="col q-ma-sm"
        input-style="font-size: 24px"
        style="min-width: 600px"
      />
      <TableSettings class="col-auto q-ma-sm" />
    </div>
    <SearchTableServer class="q-mx-md" />
  </q-page>
</template>

<script>
import { defineComponent } from 'vue'
import SearchInput from 'components/SearchInput'
import SearchTableServer from 'components/SearchTableServer'
import TableSettings from 'components/TableSettings'

export default defineComponent({
  name: 'PageIndex',
  components: { SearchInput, SearchTableServer, TableSettings },
})
</script>
