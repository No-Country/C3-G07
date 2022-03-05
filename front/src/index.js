import topBar from './components/top_bar.js'
import heroSection from './components/hero.js'

const d = document

/* render components */
d.addEventListener('DOMContentLoaded', e => {
  topBar('#toggle')
  heroSection()
})
