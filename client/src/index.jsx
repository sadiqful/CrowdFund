import react from 'react'
import ReactDOM from 'react-dom/client'
import { BrowserRouter as Router} from 'react-router-dom'
import { ChainId, ThirdWebProvider } from '@thirdweb-dev/react'

import App from './App'

const root = ReactDOM.createRoot(document.getElementById('root'));

root.render(
    <ThirdWebProvider desiredChainId={ChainId.Goerli}>
        <Router>
            <App />
        </Router>
    </ThirdWebProvider>
)