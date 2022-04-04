# spells-apothem

Staging repo for Xinfin USX Apothem executive spells.

## Instructions

### Getting Started

```bash
$ dapp update
```

### Build

```bash
$ make
```

## Adjustments

Modify:

```
diff --git a/src/DssExec.sol b/src/DssExec.sol
index 47be9f5..92a0f38 100644
--- a/src/DssExec.sol
+++ b/src/DssExec.sol
@@ -37,7 +37,7 @@ interface SpellAction {

 contract DssExec {

-    Changelog      constant public log   = Changelog(0xdA0Ab1e0017DEbCd72Be8599041a2aa3bA7e740F);
+    Changelog      constant public log  = Changelog(0x13C7235ABF6Fc803752DAbc564DF99524CE2dfAF);
     uint256                 public eta;
     bytes                   public sig;
     bool                    public done;
diff --git a/src/DssExecLib.sol b/src/DssExecLib.sol
index a54024e..c324cba 100644
--- a/src/DssExecLib.sol
+++ b/src/DssExecLib.sol
@@ -136,7 +136,7 @@ library DssExecLib {
     /*****************/
     /*** Constants ***/
     /*****************/
-    address constant public LOG = 0xdA0Ab1e0017DEbCd72Be8599041a2aa3bA7e740F;
+    address constant public LOG = 0x13C7235ABF6Fc803752DAbc564DF99524CE2dfAF;

     uint256 constant internal WAD      = 10 ** 18;
     uint256 constant internal RAY      = 10 ** 27;
```
