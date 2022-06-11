// eslint-disable-next-line camelcase, node/no-missing-import
import { Greeter__factory } from "../build";
const hardhat = require("hardhat");

async function main() {
  // get account from en
  const signer = await hardhat.ethers.getSigner(process.env.ACCOUNT);

  // get contract address from env
  const greeter = Greeter__factory.connect(process.env.Greeter!!, signer);

  // call greet as read method in contract
  const result = await greeter.greet();
  console.log("Greeter deployed to:", result);
}

main()
  // eslint-disable-next-line no-process-exit
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    // eslint-disable-next-line no-process-exit
    process.exit(1);
  });
