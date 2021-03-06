# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: rpc_envelope.proto
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "Request" do
    optional :direction, :enum, 1, "RpcEnum.RpcDirection"
    optional :rpc_id, :int64, 3
    repeated :requests, :message, 4, "Request.Requests"
    optional :unknown6, :message, 6, "Request.Unknown6"
    optional :latitude, :fixed64, 7
    optional :longitude, :fixed64, 8
    optional :altitude, :fixed64, 9
    optional :auth, :message, 10, "Request.AuthInfo"
    optional :auth_ticket, :message, 11, "AuthTicket"
    optional :unknown12, :int64, 12
  end
  add_message "Request.Requests" do
    optional :type, :enum, 1, "RpcEnum.RequestMethod"
    optional :parameters, :bytes, 2
  end
  add_message "Request.AuthInfo" do
    optional :provider, :string, 1
    optional :token, :message, 2, "Request.AuthInfo.JWT"
  end
  add_message "Request.AuthInfo.JWT" do
    optional :contents, :string, 1
    optional :unknown13, :int32, 2
  end
  add_message "Request.Unknown3" do
    optional :unknown4, :string, 1
  end
  add_message "Request.Unknown6" do
    optional :unknown1, :int32, 1
    optional :unknown2, :message, 2, "Request.Unknown6.Unknown2"
  end
  add_message "Request.Unknown6.Unknown2" do
    optional :unknown1, :bytes, 1
  end
  add_message "Response" do
    optional :direction, :enum, 1, "RpcEnum.RpcDirection"
    optional :unknown2, :int64, 2
    optional :api_url, :string, 3
    optional :unknown6, :message, 6, "Response.Unknown6"
    optional :auth_ticket, :message, 7, "AuthTicket"
    repeated :responses, :bytes, 100
  end
  add_message "Response.Unknown6" do
    optional :unknown1, :int32, 1
    optional :unknown2, :message, 2, "Response.Unknown6.Unknown2"
  end
  add_message "Response.Unknown6.Unknown2" do
    optional :unknown1, :bytes, 1
  end
  add_message "Response.Unknown7" do
    optional :unknown71, :bytes, 1
    optional :unknown72, :int64, 2
    optional :unknown73, :bytes, 3
  end
  add_message "AuthTicket" do
    optional :start, :bytes, 1
    optional :expire_timestamp_ms, :uint64, 2
    optional :end, :bytes, 3
  end
end

module RpcEnvelope
  Request = Google::Protobuf::DescriptorPool.generated_pool.lookup("Request").msgclass
  Request::Requests = Google::Protobuf::DescriptorPool.generated_pool.lookup("Request.Requests").msgclass
  Request::AuthInfo = Google::Protobuf::DescriptorPool.generated_pool.lookup("Request.AuthInfo").msgclass
  Request::AuthInfo::JWT = Google::Protobuf::DescriptorPool.generated_pool.lookup("Request.AuthInfo.JWT").msgclass
  Request::Unknown3 = Google::Protobuf::DescriptorPool.generated_pool.lookup("Request.Unknown3").msgclass
  Request::Unknown6 = Google::Protobuf::DescriptorPool.generated_pool.lookup("Request.Unknown6").msgclass
  Request::Unknown6::Unknown2 = Google::Protobuf::DescriptorPool.generated_pool.lookup("Request.Unknown6.Unknown2").msgclass
  Response = Google::Protobuf::DescriptorPool.generated_pool.lookup("Response").msgclass
  Response::Unknown6 = Google::Protobuf::DescriptorPool.generated_pool.lookup("Response.Unknown6").msgclass
  Response::Unknown6::Unknown2 = Google::Protobuf::DescriptorPool.generated_pool.lookup("Response.Unknown6.Unknown2").msgclass
  Response::Unknown7 = Google::Protobuf::DescriptorPool.generated_pool.lookup("Response.Unknown7").msgclass
  AuthTicket = Google::Protobuf::DescriptorPool.generated_pool.lookup("AuthTicket").msgclass
end
