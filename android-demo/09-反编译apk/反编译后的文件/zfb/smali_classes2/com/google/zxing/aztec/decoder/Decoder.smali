.class public final Lcom/google/zxing/aztec/decoder/Decoder;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;


# instance fields
.field private f:Lcom/google/zxing/aztec/AztecDetectorResult;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "CTRL_PS"

    aput-object v1, v0, v3

    const-string/jumbo v1, " "

    aput-object v1, v0, v4

    const-string/jumbo v1, "A"

    aput-object v1, v0, v5

    const-string/jumbo v1, "B"

    aput-object v1, v0, v6

    const-string/jumbo v1, "C"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "CTRL_LL"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "CTRL_ML"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "CTRL_DL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "CTRL_BS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->a:[Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "CTRL_PS"

    aput-object v1, v0, v3

    const-string/jumbo v1, " "

    aput-object v1, v0, v4

    const-string/jumbo v1, "a"

    aput-object v1, v0, v5

    const-string/jumbo v1, "b"

    aput-object v1, v0, v6

    const-string/jumbo v1, "c"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "e"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "CTRL_US"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "CTRL_ML"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "CTRL_DL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "CTRL_BS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->b:[Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "CTRL_PS"

    aput-object v1, v0, v3

    const-string/jumbo v1, " "

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u0001"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u0002"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u0003"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\u0004"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u0005"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u0006"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u0007"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u0008"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\t"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "\n"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "\u000b"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "\u000c"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "\r"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "\u001b"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "\u001c"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "\u001d"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "\u001e"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "\u001f"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "@"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "\\"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "^"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "`"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "~"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "\u007f"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "CTRL_LL"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "CTRL_UL"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "CTRL_PL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "CTRL_BS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->c:[Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, "\r"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\r\n"

    aput-object v1, v0, v5

    const-string/jumbo v1, ". "

    aput-object v1, v0, v6

    const-string/jumbo v1, ", "

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, ": "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "!"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "#"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "$"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "%"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "&"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "\'"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "("

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, ")"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "+"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, ";"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "<"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "="

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "?"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "["

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "]"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "{"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "}"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "CTRL_UL"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->d:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "CTRL_PS"

    aput-object v1, v0, v3

    const-string/jumbo v1, " "

    aput-object v1, v0, v4

    const-string/jumbo v1, "0"

    aput-object v1, v0, v5

    const-string/jumbo v1, "1"

    aput-object v1, v0, v6

    const-string/jumbo v1, "2"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "5"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "6"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "CTRL_UL"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "CTRL_US"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([ZII)I
    .locals 3

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    shl-int/lit8 v0, v0, 0x1

    aget-boolean v2, p0, v1

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static a([Z)Ljava/lang/String;
    .locals 12

    const/16 v11, 0xb

    const/16 v10, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x5

    array-length v2, p0

    sget-object v3, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v0, 0x14

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v7, v1

    move v1, v6

    :goto_0
    if-ge v1, v2, :cond_6

    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-ne v7, v0, :cond_2

    sub-int v0, v2, v1

    if-lt v0, v4, :cond_6

    invoke-static {p0, v1, v4}, Lcom/google/zxing/aztec/decoder/Decoder;->a([ZII)I

    move-result v0

    add-int/lit8 v1, v1, 0x5

    if-nez v0, :cond_0

    sub-int v0, v2, v1

    if-lt v0, v11, :cond_6

    invoke-static {p0, v1, v11}, Lcom/google/zxing/aztec/decoder/Decoder;->a([ZII)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    add-int/lit8 v1, v1, 0xb

    :cond_0
    move v5, v6

    :goto_1
    if-ge v5, v0, :cond_7

    sub-int v7, v2, v1

    if-ge v7, v10, :cond_1

    move v0, v2

    :goto_2
    move v1, v0

    move-object v7, v3

    goto :goto_0

    :cond_1
    invoke-static {p0, v1, v10}, Lcom/google/zxing/aztec/decoder/Decoder;->a([ZII)I

    move-result v7

    int-to-char v7, v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v1, 0x8

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v7

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-ne v7, v0, :cond_3

    const/4 v0, 0x4

    :goto_3
    sub-int v5, v2, v1

    if-lt v5, v0, :cond_6

    invoke-static {p0, v1, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->a([ZII)I

    move-result v9

    add-int v5, v1, v0

    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$1;->$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table:[I

    invoke-virtual {v7}, Lcom/google/zxing/aztec/decoder/Decoder$Table;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Bad table"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v4

    goto :goto_3

    :pswitch_0
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->a:[Ljava/lang/String;

    aget-object v0, v0, v9

    :goto_4
    const-string/jumbo v1, "CTRL_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    :goto_5
    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0x4c

    if-ne v0, v7, :cond_5

    move-object v7, v1

    move-object v3, v1

    move v1, v5

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->b:[Ljava/lang/String;

    aget-object v0, v0, v9

    goto :goto_4

    :pswitch_2
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->c:[Ljava/lang/String;

    aget-object v0, v0, v9

    goto :goto_4

    :pswitch_3
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->d:[Ljava/lang/String;

    aget-object v0, v0, v9

    goto :goto_4

    :pswitch_4
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->e:[Ljava/lang/String;

    aget-object v0, v0, v9

    goto :goto_4

    :sswitch_0
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_5

    :sswitch_1
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_5

    :sswitch_2
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_5

    :sswitch_3
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_5

    :sswitch_4
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_5

    :cond_4
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, v3

    :cond_5
    move-object v7, v1

    move v1, v5

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    move v0, v1

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_4
        0x44 -> :sswitch_3
        0x4c -> :sswitch_0
        0x4d -> :sswitch_2
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private b([Z)[Z
    .locals 13

    const/16 v0, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->f:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v1

    const/4 v4, 0x2

    if-gt v1, v4, :cond_0

    const/4 v0, 0x6

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    :goto_0
    iget-object v4, p0, Lcom/google/zxing/aztec/decoder/Decoder;->f:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v4}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v8

    array-length v4, p1

    div-int v6, v4, v0

    if-ge v6, v8, :cond_3

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->f:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v1

    if-gt v1, v0, :cond_1

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->f:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/16 v1, 0x16

    if-gt v0, v1, :cond_2

    const/16 v0, 0xa

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    :cond_2
    const/16 v0, 0xc

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    :cond_3
    array-length v4, p1

    rem-int/2addr v4, v0

    sub-int v7, v6, v8

    new-array v9, v6, [I

    move v5, v4

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_4

    invoke-static {p1, v5, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->a([ZII)I

    move-result v10

    aput v10, v9, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v5, v0

    goto :goto_1

    :cond_4
    :try_start_0
    new-instance v4, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-direct {v4, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    invoke-virtual {v4, v9, v7}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    shl-int v1, v2, v0

    add-int/lit8 v10, v1, -0x1

    move v4, v3

    move v1, v3

    :goto_2
    if-ge v4, v8, :cond_9

    aget v5, v9, v4

    if-eqz v5, :cond_5

    if-ne v5, v10, :cond_6

    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_6
    if-eq v5, v2, :cond_7

    add-int/lit8 v6, v10, -0x1

    if-ne v5, v6, :cond_8

    :cond_7
    add-int/lit8 v1, v1, 0x1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    mul-int v4, v8, v0

    sub-int v1, v4, v1

    new-array v11, v1, [Z

    move v4, v3

    move v7, v3

    :goto_3
    if-ge v7, v8, :cond_e

    aget v12, v9, v7

    if-eq v12, v2, :cond_a

    add-int/lit8 v1, v10, -0x1

    if-ne v12, v1, :cond_c

    :cond_a
    add-int v1, v4, v0

    add-int/lit8 v5, v1, -0x1

    if-le v12, v2, :cond_b

    move v1, v2

    :goto_4
    invoke-static {v11, v4, v5, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    add-int/lit8 v1, v0, -0x1

    add-int/2addr v1, v4

    :goto_5
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v4, v1

    goto :goto_3

    :cond_b
    move v1, v3

    goto :goto_4

    :cond_c
    add-int/lit8 v1, v0, -0x1

    move v5, v1

    :goto_6
    if-ltz v5, :cond_f

    add-int/lit8 v6, v4, 0x1

    shl-int v1, v2, v5

    and-int/2addr v1, v12

    if-eqz v1, :cond_d

    move v1, v2

    :goto_7
    aput-boolean v1, v11, v4

    add-int/lit8 v1, v5, -0x1

    move v5, v1

    move v4, v6

    goto :goto_6

    :cond_d
    move v1, v3

    goto :goto_7

    :cond_e
    return-object v11

    :cond_f
    move v1, v4

    goto :goto_5
.end method

.method public static highLevelDecode([Z)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/zxing/aztec/decoder/Decoder;->a([Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->f:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {p1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->extractBits(Lcom/google/zxing/common/BitMatrix;)[Z

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->b([Z)[Z

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/aztec/decoder/Decoder;->a([Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/zxing/common/DecoderResult;

    invoke-direct {v1, v2, v0, v2, v2}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v1
.end method

.method final extractBits(Lcom/google/zxing/common/BitMatrix;)[Z
    .locals 19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/zxing/aztec/decoder/Decoder;->f:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/zxing/aztec/decoder/Decoder;->f:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v10

    if-eqz v9, :cond_0

    mul-int/lit8 v3, v10, 0x4

    add-int/lit8 v3, v3, 0xb

    :goto_0
    new-array v11, v3, [I

    if-eqz v9, :cond_1

    const/16 v4, 0x58

    :goto_1
    mul-int/lit8 v5, v10, 0x10

    add-int/2addr v4, v5

    mul-int/2addr v4, v10

    new-array v12, v4, [Z

    if-eqz v9, :cond_2

    const/4 v4, 0x0

    :goto_2
    array-length v5, v11

    if-ge v4, v5, :cond_3

    aput v4, v11, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    mul-int/lit8 v3, v10, 0x4

    add-int/lit8 v3, v3, 0xe

    goto :goto_0

    :cond_1
    const/16 v4, 0x70

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v3, 0x1

    div-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, -0x1

    div-int/lit8 v5, v5, 0xf

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    div-int/lit8 v5, v3, 0x2

    div-int/lit8 v6, v4, 0x2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_3

    div-int/lit8 v7, v4, 0xf

    add-int/2addr v7, v4

    sub-int v8, v5, v4

    add-int/lit8 v8, v8, -0x1

    sub-int v13, v6, v7

    add-int/lit8 v13, v13, -0x1

    aput v13, v11, v8

    add-int v8, v5, v4

    add-int/2addr v7, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v11, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    const/4 v4, 0x0

    move v7, v4

    move v8, v5

    :goto_4
    if-ge v8, v10, :cond_7

    if-eqz v9, :cond_4

    sub-int v4, v10, v8

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x9

    :goto_5
    mul-int/lit8 v13, v8, 0x2

    add-int/lit8 v5, v3, -0x1

    sub-int v14, v5, v13

    const/4 v5, 0x0

    move v6, v5

    :goto_6
    if-ge v6, v4, :cond_6

    mul-int/lit8 v15, v6, 0x2

    const/4 v5, 0x0

    :goto_7
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v5, v0, :cond_5

    add-int v16, v7, v15

    add-int v16, v16, v5

    add-int v17, v13, v5

    aget v17, v11, v17

    add-int v18, v13, v6

    aget v18, v11, v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v17

    aput-boolean v17, v12, v16

    mul-int/lit8 v16, v4, 0x2

    add-int v16, v16, v7

    add-int v16, v16, v15

    add-int v16, v16, v5

    add-int v17, v13, v6

    aget v17, v11, v17

    sub-int v18, v14, v5

    aget v18, v11, v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v17

    aput-boolean v17, v12, v16

    mul-int/lit8 v16, v4, 0x4

    add-int v16, v16, v7

    add-int v16, v16, v15

    add-int v16, v16, v5

    sub-int v17, v14, v5

    aget v17, v11, v17

    sub-int v18, v14, v6

    aget v18, v11, v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v17

    aput-boolean v17, v12, v16

    mul-int/lit8 v16, v4, 0x6

    add-int v16, v16, v7

    add-int v16, v16, v15

    add-int v16, v16, v5

    sub-int v17, v14, v6

    aget v17, v11, v17

    add-int v18, v13, v5

    aget v18, v11, v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v17

    aput-boolean v17, v12, v16

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_4
    sub-int v4, v10, v8

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0xc

    goto/16 :goto_5

    :cond_5
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto/16 :goto_6

    :cond_6
    mul-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v7

    add-int/lit8 v5, v8, 0x1

    move v7, v4

    move v8, v5

    goto/16 :goto_4

    :cond_7
    return-object v12
.end method
