module ReportsHelper
  def first_victim_name(report)
    report.actors.select { |a| a.actor_type_id == @victim_type_id }.first.full_name
  end
end
