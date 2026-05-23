import SwiftUI

struct CountriesView: View {
    @State private var countries: [Country] = []
    private let interactor: CountriesBusinessLogic

    init(interactor: CountriesBusinessLogic = CountriesInteractor()) {
        self.interactor = interactor
    }

    var body: some View {
        NavigationStack {
            List(countries) { c in
                HStack {
                    Text(c.flag)
                    VStack(alignment: .leading) {
                        Text(c.name)
                        Text(c.capital).font(.caption).foregroundStyle(.secondary)
                    }
                }
            }
            .navigationTitle("Countries VIP")
            .overlay {
                if countries.isEmpty {
                    ProgressView("Loading…")
                }
            }
            .task {
                countries = await interactor.fetchCountries()
            }
        }
    }
}
