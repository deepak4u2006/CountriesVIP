protocol CountriesBusinessLogic: Sendable {
    func fetchCountries() async -> [Country]
}
struct CountriesInteractor: CountriesBusinessLogic {
    func fetchCountries() async -> [Country] {
        try? await Task.sleep(nanoseconds: 300_000_000)
        return [
            Country(id: "IE", name: "Ireland", capital: "Dublin", flag: "🇮🇪"),
            Country(id: "LT", name: "Lithuania", capital: "Vilnius", flag: "🇱🇹"),
            Country(id: "GB", name: "United Kingdom", capital: "London", flag: "🇬🇧"),
            Country(id: "PL", name: "Poland", capital: "Warsaw", flag: "🇵🇱"),
        ]
    }
}
