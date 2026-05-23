# CountriesVIP

![iOS CI](https://github.com/deepak4u2006/CountriesVIP/actions/workflows/ios.yml/badge.svg)

VIP (View–Interactor–Presenter) architecture — a modern Swift rewrite of the classic countries assignment, styled for fintech portfolio demos.

## VIP layers

| Layer | Type | Role |
|-------|------|------|
| **View** | `CountriesView` | SwiftUI, user events, renders state |
| **Interactor** | `CountriesInteractor` | Business logic, async data fetch |
| **Presenter** | `CountriesPresenter` | Formats data for the view |
| **Entity** | `Country` | Plain models |
| **Router** | *(inline in app shell)* | Navigation wiring |

Data flows **View → Interactor → Presenter → View**; the interactor never imports SwiftUI.

## Run

Open `CountriesVIP.xcodeproj` → iPhone simulator → ⌘R. Tests: ⌘U.

## Revolut-relevant signals

- Strict layer boundaries (testable interactors)
- `async/await` loading
- Dark fintech presentation layer

*Fintech-inspired — not affiliated with Revolut Ltd.*
