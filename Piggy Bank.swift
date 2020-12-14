var pesos: Double = 100
var reais: Double = 100
var soles: Double = 100

var total: Double

// 🇲🇽 Pesos conversion rate: 0.050
// 🇧🇷 Reais conversion rate: 0.20
// 🇵🇪 Soles conversion rate: 0.28

// as at Mon 14 Dec 18:43:55

total = 0.050 * pesos + 0.20 * reais + 0.28 * soles

print("Total USD = $\(total)")

// >>> $53.0