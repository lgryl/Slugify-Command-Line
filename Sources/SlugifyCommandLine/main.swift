let slugifyCommandLine = SlugifyCommandLine()

do {
    try slugifyCommandLine.run()
} catch {
    print("Error occured: \(error)")
}
