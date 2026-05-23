@MainActor
protocol CountriesPresentationLogic: AnyObject {
    func present(countries: [Country])
}

@MainActor
final class CountriesPresenter: CountriesPresentationLogic {
    var onUpdate: (([Country]) -> Void)?

    func present(countries: [Country]) {
        onUpdate?(countries)
    }
}
