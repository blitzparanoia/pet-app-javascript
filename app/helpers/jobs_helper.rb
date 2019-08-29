module JobsHelper
  def top_company
    pair = Job.job_hash
    com = Company.find_by_id(pair[0])
  end
end
