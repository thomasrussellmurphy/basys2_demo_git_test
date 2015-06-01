VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL mclk
        SIGNAL sw(7)
        SIGNAL uclk
        SIGNAL led(7:0)
        SIGNAL seg(6:0)
        SIGNAL an(3:0)
        SIGNAL dp
        SIGNAL btn(3:0)
        SIGNAL sw(7:0)
        SIGNAL VS
        SIGNAL HS
        SIGNAL OutRed(2:0)
        SIGNAL OutGreen(2:0)
        SIGNAL OutBlue(2:1)
        SIGNAL XLXN_16
        SIGNAL ck50MHz
        PORT Input mclk
        PORT Input uclk
        PORT Output led(7:0)
        PORT Output seg(6:0)
        PORT Output an(3:0)
        PORT Output dp
        PORT Input btn(3:0)
        PORT Input sw(7:0)
        PORT Output VS
        PORT Output HS
        PORT Output OutRed(2:0)
        PORT Output OutGreen(2:0)
        PORT Output OutBlue(2:1)
        BEGIN BLOCKDEF DispCtrl
            TIMESTAMP 2009 3 22 21 22 45
            LINE N 64 80 0 80 
            LINE N 352 16 416 16 
            LINE N 352 48 416 48 
            RECTANGLE N 352 -172 416 -148 
            LINE N 352 -160 416 -160 
            RECTANGLE N 352 -140 416 -116 
            LINE N 352 -128 416 -128 
            RECTANGLE N 352 -108 416 -84 
            LINE N 352 -96 416 -96 
            RECTANGLE N 64 -196 352 112 
        END BLOCKDEF
        BEGIN BLOCKDEF SimpleSsegLedDemo
            TIMESTAMP 2009 3 22 17 16 11
            RECTANGLE N 64 -256 320 124 
            LINE N 64 -224 0 -224 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 20 384 44 
            LINE N 320 32 384 32 
            RECTANGLE N 320 84 384 108 
            LINE N 320 96 384 96 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -236 384 -212 
            LINE N 384 -224 320 -224 
            RECTANGLE N 320 -172 384 -148 
            LINE N 384 -160 320 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF ckMux
            TIMESTAMP 2008 9 11 23 7 30
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_82 SimpleSsegLedDemo
            PIN ck mclk
            PIN led(7:0) led(7:0)
            PIN seg(6:0) seg(6:0)
            PIN an(3:0) an(3:0)
            PIN dp dp
            PIN btn(3:0) btn(3:0)
            PIN sw(7:0) sw(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_83 ckMux
            PIN ck0 mclk
            PIN ck1 uclk
            PIN sel sw(7)
            PIN ckOut ck50MHz
        END BLOCK
        BEGIN BLOCK XLXI_75 DispCtrl
            PIN ck ck50MHz
            PIN HS HS
            PIN VS VS
            PIN outRed(2:0) OutRed(2:0)
            PIN outGreen(2:0) OutGreen(2:0)
            PIN outBlue(2:1) OutBlue(2:1)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH mclk
            WIRE 192 608 272 608
            WIRE 272 608 416 608
            WIRE 272 608 272 992
            WIRE 272 992 448 992
            WIRE 448 992 912 992
            BEGIN DISPLAY 448 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_83 416 768 R0
        END INSTANCE
        IOMARKER 192 672 uclk R180 28
        IOMARKER 192 608 mclk R180 28
        BEGIN BRANCH uclk
            WIRE 192 672 416 672
        END BRANCH
        BEGIN BRANCH led(7:0)
            WIRE 1296 1184 1456 1184
        END BRANCH
        BEGIN BRANCH seg(6:0)
            WIRE 1296 1248 1456 1248
        END BRANCH
        BEGIN BRANCH an(3:0)
            WIRE 1296 1312 1456 1312
        END BRANCH
        BEGIN BRANCH dp
            WIRE 1296 1120 1520 1120
        END BRANCH
        BEGIN BRANCH btn(3:0)
            WIRE 1296 992 1456 992
        END BRANCH
        BEGIN BRANCH sw(7:0)
            WIRE 1296 1056 1408 1056
            WIRE 1408 1056 1456 1056
        END BRANCH
        BEGIN INSTANCE XLXI_82 912 1216 R0
        END INSTANCE
        BEGIN BRANCH sw(7)
            WIRE 336 736 416 736
            WIRE 336 736 336 864
            WIRE 336 864 448 864
            WIRE 448 864 1408 864
            WIRE 1408 864 1408 960
            BEGIN DISPLAY 448 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH VS
            WIRE 1344 576 1424 576
        END BRANCH
        BEGIN BRANCH HS
            WIRE 1344 544 1424 544
        END BRANCH
        BEGIN BRANCH OutRed(2:0)
            WIRE 1344 368 1424 368
        END BRANCH
        BEGIN BRANCH OutGreen(2:0)
            WIRE 1344 400 1424 400
        END BRANCH
        BEGIN BRANCH OutBlue(2:1)
            WIRE 1344 432 1424 432
        END BRANCH
        BEGIN INSTANCE XLXI_75 928 528 R0
        END INSTANCE
        IOMARKER 1456 1312 an(3:0) R0 28
        IOMARKER 1456 1248 seg(6:0) R0 28
        IOMARKER 1456 1184 led(7:0) R0 28
        IOMARKER 1520 1120 dp R0 28
        IOMARKER 1424 576 VS R0 28
        IOMARKER 1424 544 HS R0 28
        IOMARKER 1424 368 OutRed(2:0) R0 28
        IOMARKER 1424 400 OutGreen(2:0) R0 28
        IOMARKER 1424 432 OutBlue(2:1) R0 28
        IOMARKER 1456 992 btn(3:0) R0 28
        IOMARKER 1456 1056 sw(7:0) R0 28
        BUSTAP 1408 1056 1408 960
        BEGIN BRANCH ck50MHz
            WIRE 800 608 864 608
            WIRE 864 608 928 608
            BEGIN DISPLAY 860 608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
