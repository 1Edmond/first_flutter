class Demande {
  String id, userName, motif, description;
  DateTime dateDemande;
  int statut;

  Demande(
      {required this.id,
      required this.description,
      required this.userName,
      required this.motif,
      required this.dateDemande, required this.statut});
}
