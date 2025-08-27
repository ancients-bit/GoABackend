# ActiveAdmin.register_page "Dashboard" do
#   menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

#   content title: "Dashboard" do
#     columns do
#       column do
#         panel "Total Bookings" do
#           h2 Booking.count
#           span "+12 this month", style: "color: #047857;"
#         end
#       end
#       column do
#         panel "New Testimonials" do
#           h2 Testimonial.where(status: 'pending').count
#           span "+5 this week", style: "color: #047857;"
#         end
#       end
#       column do
#         panel "Blog Posts Published" do
#           h2 BlogPost.count
#           span "+3 this month", style: "color: #047857;"
#         end
#       end
#       column do
#         panel "Newsletter Subscribers" do
#           h2 Subscriber.count
#           span "+127 this week", style: "color: #047857;"
#         end
#       end
#     end

#     columns do
#       column do
#         panel "Recent Bookings" do
#           table_for Booking.order(created_at: :desc).limit(5) do
#             column(:name)
#             column(:email)
#             column(:created_at)
#             column(:status)
#             column("Actions") do |booking|
#               span link_to("Approve", admin_booking_path(booking), class: "button green")
#               span link_to("Reject", admin_booking_path(booking), class: "button red")
#             end
#           end
#         end
#       end

#       column do
#         panel "Recent Testimonials" do
#           table_for Testimonial.order(created_at: :desc).limit(5) do
#             column(:name)
#             column(:rating)
#             column(:story) { |t| t.story.truncate(50) }
#             column("Actions") do |testimonial|
#               span link_to("Approve", approve_admin_testimonial_path(testimonial), class: "button green")
#               span link_to("Deny", deny_admin_testimonial_path(testimonial), class: "button red")
#             end
#           end
#         end
#       end
#     end
#   end
# end
