module ReportsHelper
  def first_victim_name(report)
    report.actors.select { |a| a.actor_type_id == @victim_type_id }.first.full_name
  end

  def first_victim_relationship(report)
    x = report.actors.select { |a| a.actor_type_id == @victim_type_id }.first
    if x.present? && x.relationship_id.present?
      x.relationship.name
    else
      nil
    end
  end
end
