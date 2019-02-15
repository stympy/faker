# frozen_string_literal: true

require 'digest'
require 'securerandom'

module Faker
  class Blockchain
    # @faker.version 1.9.2
    class Tezos < Base
      class << self
        # @private
        PREFIXES = {
          tz1: [6, 161, 159],
          KT1: [2, 90, 121],
          edpk: [13, 15, 37, 217],
          edsk: [13, 15, 58, 7],
          edsig: [9, 245, 205, 134, 18],
          B: [1, 52],
          o: [5, 116]
        }.freeze

        ##
        # Produces a random Tezos account address
        #
        # @return [string]
        #
        # @example
        #   "tz1eUsgK6aj752Fbxwk5sAoEFvSDnPjZ4qvk"
        #
        # @faker.version 1.9.2
        def account
          encode_tz(:tz1, 20)
        end

        ##
        # Produces a random Tezos contract
        #
        # @return [string]
        #
        # @example
        #   "KT1MroqeP15nnitB4CnNfkqHYa2NErhPPLWF"
        #
        # @faker.version 1.9.2
        def contract
          encode_tz(:KT1, 20)
        end

        ##
        # Produces a random Tezos operation
        #
        # @return [string]
        #
        # @example
        #   "onygWYXJX3xNstFLv9PcCrhQdCkENC795xwSinmTEc1jsDN4VDa"
        #
        # @faker.version 1.9.2
        def operation
          encode_tz(:o, 32)
        end

        def block
          encode_tz(:B, 32)
        end

        ##
        # Produces a random Tezos signature
        #
        # @return [string]
        #
        # @example
        #   "edsigu165B7VFf3Dpw2QABVzEtCxJY2gsNBNcE3Ti7rRxtDUjqTFRpg67EdAQmY6YWPE5tKJDMnSTJDFu65gic8uLjbW2YwGvAZ"
        #
        # @faker.version 1.9.2
        def signature
          encode_tz(:edsig, 64)
        end

        protected

        ##
        # @protected
        #
        # @param prefix [Symbol]
        # @param payload_size [Integer] The size of the payload
        #
        # @return [string]
        def encode_tz(prefix, payload_size)
          prefix = PREFIXES.fetch(prefix)
          packed = prefix.map(&:chr).join('') + Faker::Config.random.bytes(payload_size)
          checksum = Digest::SHA2.digest(Digest::SHA2.digest(packed))[0..3]
          Faker::Base58.encode(packed + checksum)
        end
      end
    end
  end
end
