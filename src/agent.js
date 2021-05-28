import { Actor, HttpAgent } from "@dfinity/agent"
import { idlFactory as counter_idl, canisterId as counter_id } from "dfx-generated/counter"
import { idlFactory as supplier_idl, canisterId as supplier_id } from "dfx-generated/supplier"

const agentOptions = {
  host: "http://localhost:8000",
}

const agent = new HttpAgent(agentOptions)
const counter = Actor.createActor(counter_idl, { agent, canisterId: counter_id })
const supplier = Actor.createActor(supplier_idl, { agent, canisterId: supplier_id })

export { counter, supplier }