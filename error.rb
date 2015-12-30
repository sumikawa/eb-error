require 'bundler/setup'
Bundler.require

get '/:error/:age/*' do
  headers \
    "Cache-Control" => "max-age=#{params[:age]}"
  body "<pre>#{params[:error]} error</pre>\n"
  params[:error].to_i
end

get '/:error/*' do
  body "<pre>#{params[:error]} error</pre>\n"
  params[:error].to_i
end
