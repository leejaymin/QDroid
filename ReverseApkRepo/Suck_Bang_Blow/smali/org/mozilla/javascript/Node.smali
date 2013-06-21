.class public Lorg/mozilla/javascript/Node;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/Node$1;,
        Lorg/mozilla/javascript/Node$NodeIterator;,
        Lorg/mozilla/javascript/Node$PropListItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/mozilla/javascript/Node;",
        ">;"
    }
.end annotation


# static fields
.field public static final ATTRIBUTE_FLAG:I = 0x2

.field public static final BOTH:I = 0x0

.field public static final CASEARRAY_PROP:I = 0x5

.field public static final CATCH_SCOPE_PROP:I = 0xe

.field public static final CONTROL_BLOCK_PROP:I = 0x12

.field public static final DECR_FLAG:I = 0x1

.field public static final DESCENDANTS_FLAG:I = 0x4

.field public static final DESTRUCTURING_ARRAY_LENGTH:I = 0x15

.field public static final DESTRUCTURING_NAMES:I = 0x16

.field public static final DESTRUCTURING_PARAMS:I = 0x17

.field public static final DESTRUCTURING_SHORTHAND:I = 0x1a

.field public static final DIRECTCALL_PROP:I = 0x9

.field public static final END_DROPS_OFF:I = 0x1

.field public static final END_RETURNS:I = 0x2

.field public static final END_RETURNS_VALUE:I = 0x4

.field public static final END_UNREACHED:I = 0x0

.field public static final END_YIELDS:I = 0x8

.field public static final EXPRESSION_CLOSURE_PROP:I = 0x19

.field public static final FUNCTION_PROP:I = 0x1

.field public static final GENERATOR_END_PROP:I = 0x14

.field public static final INCRDECR_PROP:I = 0xd

.field public static final ISNUMBER_PROP:I = 0x8

.field public static final JSDOC_PROP:I = 0x18

.field public static final LABEL_ID_PROP:I = 0xf

.field public static final LAST_PROP:I = 0x1a

.field public static final LEFT:I = 0x1

.field public static final LOCAL_BLOCK_PROP:I = 0x3

.field public static final LOCAL_PROP:I = 0x2

.field public static final MEMBER_TYPE_PROP:I = 0x10

.field public static final NAME_PROP:I = 0x11

.field public static final NON_SPECIALCALL:I = 0x0

.field private static final NOT_SET:Lorg/mozilla/javascript/Node; = null

.field public static final OBJECT_IDS_PROP:I = 0xc

.field public static final PARENTHESIZED_PROP:I = 0x13

.field public static final POST_FLAG:I = 0x2

.field public static final PROPERTY_FLAG:I = 0x1

.field public static final REGEXP_PROP:I = 0x4

.field public static final RIGHT:I = 0x2

.field public static final SKIP_INDEXES_PROP:I = 0xb

.field public static final SPECIALCALL_EVAL:I = 0x1

.field public static final SPECIALCALL_PROP:I = 0xa

.field public static final SPECIALCALL_WITH:I = 0x2

.field public static final TARGETBLOCK_PROP:I = 0x6

.field public static final VARIABLE_PROP:I = 0x7


# instance fields
.field protected first:Lorg/mozilla/javascript/Node;

.field protected last:Lorg/mozilla/javascript/Node;

.field protected lineno:I

.field protected next:Lorg/mozilla/javascript/Node;

.field protected propListHead:Lorg/mozilla/javascript/Node$PropListItem;

.field protected type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 361
    new-instance v0, Lorg/mozilla/javascript/Node;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    sput-object v0, Lorg/mozilla/javascript/Node;->NOT_SET:Lorg/mozilla/javascript/Node;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "nodeType"

    .prologue
    const/4 v0, -0x1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1267
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    .line 1271
    iput v0, p0, Lorg/mozilla/javascript/Node;->lineno:I

    .line 132
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    .line 133
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "nodeType"
    .parameter "line"

    .prologue
    const/4 v0, -0x1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1267
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    .line 1271
    iput v0, p0, Lorg/mozilla/javascript/Node;->lineno:I

    .line 159
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    .line 160
    iput p2, p0, Lorg/mozilla/javascript/Node;->lineno:I

    .line 161
    return-void
.end method

.method public constructor <init>(ILorg/mozilla/javascript/Node;)V
    .locals 1
    .parameter "nodeType"
    .parameter "child"

    .prologue
    const/4 v0, -0x1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1267
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    .line 1271
    iput v0, p0, Lorg/mozilla/javascript/Node;->lineno:I

    .line 136
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    .line 137
    iput-object p2, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    iput-object p2, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    .line 138
    const/4 v0, 0x0

    iput-object v0, p2, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    .line 139
    return-void
.end method

.method public constructor <init>(ILorg/mozilla/javascript/Node;I)V
    .locals 0
    .parameter "nodeType"
    .parameter "child"
    .parameter "line"

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 165
    iput p3, p0, Lorg/mozilla/javascript/Node;->lineno:I

    .line 166
    return-void
.end method

.method public constructor <init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 1
    .parameter "nodeType"
    .parameter "left"
    .parameter "right"

    .prologue
    const/4 v0, -0x1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1267
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    .line 1271
    iput v0, p0, Lorg/mozilla/javascript/Node;->lineno:I

    .line 142
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    .line 143
    iput-object p2, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    .line 144
    iput-object p3, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    .line 145
    iput-object p3, p2, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    .line 146
    const/4 v0, 0x0

    iput-object v0, p3, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    .line 147
    return-void
.end method

.method public constructor <init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)V
    .locals 0
    .parameter "nodeType"
    .parameter "left"
    .parameter "right"
    .parameter "line"

    .prologue
    .line 169
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 170
    iput p4, p0, Lorg/mozilla/javascript/Node;->lineno:I

    .line 171
    return-void
.end method

.method public constructor <init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 1
    .parameter "nodeType"
    .parameter "left"
    .parameter "mid"
    .parameter "right"

    .prologue
    const/4 v0, -0x1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1267
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    .line 1271
    iput v0, p0, Lorg/mozilla/javascript/Node;->lineno:I

    .line 150
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    .line 151
    iput-object p2, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    .line 152
    iput-object p4, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    .line 153
    iput-object p3, p2, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    .line 154
    iput-object p4, p3, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    .line 155
    const/4 v0, 0x0

    iput-object v0, p4, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    .line 156
    return-void
.end method

.method public constructor <init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)V
    .locals 0
    .parameter "nodeType"
    .parameter "left"
    .parameter "mid"
    .parameter "right"
    .parameter "line"

    .prologue
    .line 174
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 175
    iput p5, p0, Lorg/mozilla/javascript/Node;->lineno:I

    .line 176
    return-void
.end method

.method static synthetic access$000()Lorg/mozilla/javascript/Node;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lorg/mozilla/javascript/Node;->NOT_SET:Lorg/mozilla/javascript/Node;

    return-object v0
.end method

.method private static appendPrintId(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ObjToIntMap;Ljava/lang/StringBuffer;)V
    .locals 0
    .parameter "n"
    .parameter "printIds"
    .parameter "sb"

    .prologue
    .line 1265
    return-void
.end method

.method private endCheck()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 878
    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    sparse-switch v0, :sswitch_data_0

    move v0, v1

    .line 934
    :goto_0
    return v0

    .line 881
    :sswitch_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Node;->endCheckBreak()I

    move-result v0

    goto :goto_0

    .line 884
    :sswitch_1
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    invoke-direct {v0}, Lorg/mozilla/javascript/Node;->endCheck()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 886
    goto :goto_0

    .line 889
    :sswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 893
    :sswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 896
    :sswitch_4
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    if-eqz v0, :cond_1

    .line 897
    const/4 v0, 0x4

    goto :goto_0

    .line 899
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 902
    :sswitch_5
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    if-eqz v0, :cond_2

    .line 903
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    invoke-direct {v0}, Lorg/mozilla/javascript/Node;->endCheck()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 905
    goto :goto_0

    .line 908
    :sswitch_6
    invoke-direct {p0}, Lorg/mozilla/javascript/Node;->endCheckLoop()I

    move-result v0

    goto :goto_0

    .line 913
    :sswitch_7
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    if-nez v0, :cond_3

    move v0, v1

    .line 914
    goto :goto_0

    .line 916
    :cond_3
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    iget v0, v0, Lorg/mozilla/javascript/Node;->type:I

    sparse-switch v0, :sswitch_data_1

    .line 930
    invoke-direct {p0}, Lorg/mozilla/javascript/Node;->endCheckBlock()I

    move-result v0

    goto :goto_0

    .line 918
    :sswitch_8
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    invoke-direct {v0}, Lorg/mozilla/javascript/Node;->endCheckLabel()I

    move-result v0

    goto :goto_0

    .line 921
    :sswitch_9
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    invoke-direct {v0}, Lorg/mozilla/javascript/Node;->endCheckIf()I

    move-result v0

    goto :goto_0

    .line 924
    :sswitch_a
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    invoke-direct {v0}, Lorg/mozilla/javascript/Node;->endCheckSwitch()I

    move-result v0

    goto :goto_0

    .line 927
    :sswitch_b
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    invoke-direct {v0}, Lorg/mozilla/javascript/Node;->endCheckTry()I

    move-result v0

    goto :goto_0

    .line 878
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x32 -> :sswitch_3
        0x48 -> :sswitch_2
        0x78 -> :sswitch_0
        0x79 -> :sswitch_3
        0x81 -> :sswitch_7
        0x83 -> :sswitch_5
        0x84 -> :sswitch_6
        0x85 -> :sswitch_1
        0x8d -> :sswitch_7
    .end sparse-switch

    .line 916
    :sswitch_data_1
    .sparse-switch
        0x7 -> :sswitch_9
        0x51 -> :sswitch_b
        0x72 -> :sswitch_a
        0x82 -> :sswitch_8
    .end sparse-switch
.end method

.method private endCheckBlock()I
    .locals 3

    .prologue
    .line 826
    const/4 v1, 0x1

    .line 830
    .local v1, rv:I
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    .local v0, n:Lorg/mozilla/javascript/Node;
    :goto_0
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 832
    and-int/lit8 v1, v1, -0x2

    .line 833
    invoke-direct {v0}, Lorg/mozilla/javascript/Node;->endCheck()I

    move-result v2

    or-int/2addr v1, v2

    .line 830
    iget-object v0, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    goto :goto_0

    .line 835
    :cond_0
    return v1
.end method

.method private endCheckBreak()I
    .locals 3

    .prologue
    .line 862
    check-cast p0, Lorg/mozilla/javascript/ast/Jump;

    .end local p0
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/Jump;->getJumpStatement()Lorg/mozilla/javascript/ast/Jump;

    move-result-object v0

    .line 863
    .local v0, n:Lorg/mozilla/javascript/Node;
    const/16 v1, 0x12

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 864
    const/4 v1, 0x0

    return v1
.end method

.method private endCheckIf()I
    .locals 4

    .prologue
    .line 677
    const/4 v1, 0x0

    .line 679
    .local v1, rv:I
    iget-object v2, p0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    .line 680
    .local v2, th:Lorg/mozilla/javascript/Node;
    check-cast p0, Lorg/mozilla/javascript/ast/Jump;

    .end local p0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    .line 682
    .local v0, el:Lorg/mozilla/javascript/Node;
    invoke-direct {v2}, Lorg/mozilla/javascript/Node;->endCheck()I

    move-result v1

    .line 684
    if-eqz v0, :cond_0

    .line 685
    invoke-direct {v0}, Lorg/mozilla/javascript/Node;->endCheck()I

    move-result v3

    or-int/2addr v1, v3

    .line 689
    :goto_0
    return v1

    .line 687
    :cond_0
    or-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private endCheckLabel()I
    .locals 3

    .prologue
    .line 847
    const/4 v0, 0x0

    .line 849
    .local v0, rv:I
    iget-object v1, p0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    invoke-direct {v1}, Lorg/mozilla/javascript/Node;->endCheck()I

    move-result v0

    .line 850
    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v1

    or-int/2addr v0, v1

    .line 852
    return v0
.end method

.method private endCheckLoop()I
    .locals 5

    .prologue
    .line 791
    const/4 v2, 0x0

    .line 798
    .local v2, rv:I
    iget-object v1, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    .local v1, n:Lorg/mozilla/javascript/Node;
    :goto_0
    iget-object v3, v1, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    iget-object v4, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    if-eq v3, v4, :cond_0

    iget-object v1, v1, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    goto :goto_0

    .line 801
    :cond_0
    iget v3, v1, Lorg/mozilla/javascript/Node;->type:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    .line 802
    const/4 v3, 0x1

    .line 814
    :goto_1
    return v3

    .line 805
    :cond_1
    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/ast/Jump;

    move-object v3, v0

    iget-object v3, v3, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    iget-object v3, v3, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    invoke-direct {v3}, Lorg/mozilla/javascript/Node;->endCheck()I

    move-result v2

    .line 808
    iget-object v3, v1, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    iget v3, v3, Lorg/mozilla/javascript/Node;->type:I

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_2

    .line 809
    and-int/lit8 v2, v2, -0x2

    .line 812
    :cond_2
    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v3

    or-int/2addr v2, v3

    move v3, v2

    .line 814
    goto :goto_1
.end method

.method private endCheckSwitch()I
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x0

    .line 725
    .local v0, rv:I
    return v0
.end method

.method private endCheckTry()I
    .locals 1

    .prologue
    .line 738
    const/4 v0, 0x0

    .line 771
    .local v0, rv:I
    return v0
.end method

.method private ensureProperty(I)Lorg/mozilla/javascript/Node$PropListItem;
    .locals 2
    .parameter "propType"

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Node;->lookupProperty(I)Lorg/mozilla/javascript/Node$PropListItem;

    move-result-object v0

    .line 470
    .local v0, item:Lorg/mozilla/javascript/Node$PropListItem;
    if-nez v0, :cond_0

    .line 471
    new-instance v0, Lorg/mozilla/javascript/Node$PropListItem;

    .end local v0           #item:Lorg/mozilla/javascript/Node$PropListItem;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node$PropListItem;-><init>(Lorg/mozilla/javascript/Node$1;)V

    .line 472
    .restart local v0       #item:Lorg/mozilla/javascript/Node$PropListItem;
    iput p1, v0, Lorg/mozilla/javascript/Node$PropListItem;->type:I

    .line 473
    iget-object v1, p0, Lorg/mozilla/javascript/Node;->propListHead:Lorg/mozilla/javascript/Node$PropListItem;

    iput-object v1, v0, Lorg/mozilla/javascript/Node$PropListItem;->next:Lorg/mozilla/javascript/Node$PropListItem;

    .line 474
    iput-object v0, p0, Lorg/mozilla/javascript/Node;->propListHead:Lorg/mozilla/javascript/Node$PropListItem;

    .line 476
    :cond_0
    return-object v0
.end method

.method private static generatePrintIds(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ObjToIntMap;)V
    .locals 0
    .parameter "n"
    .parameter "map"

    .prologue
    .line 1249
    return-void
.end method

.method private lookupProperty(I)Lorg/mozilla/javascript/Node$PropListItem;
    .locals 2
    .parameter "propType"

    .prologue
    .line 460
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->propListHead:Lorg/mozilla/javascript/Node$PropListItem;

    .line 461
    .local v0, x:Lorg/mozilla/javascript/Node$PropListItem;
    :goto_0
    if-eqz v0, :cond_0

    iget v1, v0, Lorg/mozilla/javascript/Node$PropListItem;->type:I

    if-eq p1, v1, :cond_0

    .line 462
    iget-object v0, v0, Lorg/mozilla/javascript/Node$PropListItem;->next:Lorg/mozilla/javascript/Node$PropListItem;

    goto :goto_0

    .line 464
    :cond_0
    return-object v0
.end method

.method public static newNumber(D)Lorg/mozilla/javascript/Node;
    .locals 1
    .parameter "number"

    .prologue
    .line 179
    new-instance v0, Lorg/mozilla/javascript/ast/NumberLiteral;

    invoke-direct {v0}, Lorg/mozilla/javascript/ast/NumberLiteral;-><init>()V

    .line 180
    .local v0, n:Lorg/mozilla/javascript/ast/NumberLiteral;
    invoke-virtual {v0, p0, p1}, Lorg/mozilla/javascript/ast/NumberLiteral;->setNumber(D)V

    .line 181
    return-object v0
.end method

.method public static newString(ILjava/lang/String;)Lorg/mozilla/javascript/Node;
    .locals 1
    .parameter "type"
    .parameter "str"

    .prologue
    .line 189
    new-instance v0, Lorg/mozilla/javascript/ast/Name;

    invoke-direct {v0}, Lorg/mozilla/javascript/ast/Name;-><init>()V

    .line 190
    .local v0, name:Lorg/mozilla/javascript/ast/Name;
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Name;->setIdentifier(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/ast/Name;->setType(I)Lorg/mozilla/javascript/Node;

    .line 192
    return-object v0
.end method

.method public static newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;
    .locals 1
    .parameter "str"

    .prologue
    .line 185
    const/16 v0, 0x29

    invoke-static {v0, p0}, Lorg/mozilla/javascript/Node;->newString(ILjava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    return-object v0
.end method

.method public static newTarget()Lorg/mozilla/javascript/Node;
    .locals 2

    .prologue
    .line 582
    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x83

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    return-object v0
.end method

.method private static final propToString(I)Ljava/lang/String;
    .locals 1
    .parameter "propType"

    .prologue
    .line 455
    const/4 v0, 0x0

    return-object v0
.end method

.method private toString(Lorg/mozilla/javascript/ObjToIntMap;Ljava/lang/StringBuffer;)V
    .locals 0
    .parameter "printIds"
    .parameter "sb"

    .prologue
    .line 1200
    return-void
.end method

.method private static toStringTreeHelper(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ObjToIntMap;ILjava/lang/StringBuffer;)V
    .locals 0
    .parameter "treeTop"
    .parameter "n"
    .parameter "printIds"
    .parameter "level"
    .parameter "sb"

    .prologue
    .line 1237
    return-void
.end method


# virtual methods
.method public addChildAfter(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 2
    .parameter "newChild"
    .parameter "node"

    .prologue
    .line 316
    iget-object v0, p1, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    if-eqz v0, :cond_0

    .line 317
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "newChild had siblings in addChildAfter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_0
    iget-object v0, p2, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    iput-object v0, p1, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    .line 320
    iput-object p1, p2, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    .line 321
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    if-ne v0, p2, :cond_1

    .line 322
    iput-object p1, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    .line 323
    :cond_1
    return-void
.end method

.method public addChildBefore(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 3
    .parameter "newChild"
    .parameter "node"

    .prologue
    .line 300
    iget-object v1, p1, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    if-eqz v1, :cond_0

    .line 301
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "newChild had siblings in addChildBefore"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    if-ne v1, p2, :cond_1

    .line 304
    iget-object v1, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    iput-object v1, p1, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    .line 305
    iput-object p1, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_1
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Node;->getChildBefore(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 309
    .local v0, prev:Lorg/mozilla/javascript/Node;
    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/Node;->addChildAfter(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_0
.end method

.method public addChildToBack(Lorg/mozilla/javascript/Node;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 268
    const/4 v0, 0x0

    iput-object v0, p1, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    .line 269
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    if-nez v0, :cond_0

    .line 270
    iput-object p1, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    iput-object p1, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    iput-object p1, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    .line 274
    iput-object p1, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    goto :goto_0
.end method

.method public addChildToFront(Lorg/mozilla/javascript/Node;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 260
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    iput-object v0, p1, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    .line 261
    iput-object p1, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    .line 262
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    if-nez v0, :cond_0

    .line 263
    iput-object p1, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    .line 265
    :cond_0
    return-void
.end method

.method public addChildrenToBack(Lorg/mozilla/javascript/Node;)V
    .locals 1
    .parameter "children"

    .prologue
    .line 287
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    iput-object p1, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    .line 290
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getLastSibling()Lorg/mozilla/javascript/Node;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    .line 291
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    if-nez v0, :cond_1

    .line 292
    iput-object p1, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    .line 294
    :cond_1
    return-void
.end method

.method public addChildrenToFront(Lorg/mozilla/javascript/Node;)V
    .locals 2
    .parameter "children"

    .prologue
    .line 278
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getLastSibling()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 279
    .local v0, lastSib:Lorg/mozilla/javascript/Node;
    iget-object v1, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    iput-object v1, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    .line 280
    iput-object p1, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    .line 281
    iget-object v1, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    if-nez v1, :cond_0

    .line 282
    iput-object v0, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    .line 284
    :cond_0
    return-void
.end method

.method public getChildBefore(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 3
    .parameter "child"

    .prologue
    .line 240
    iget-object v1, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    if-ne p1, v1, :cond_0

    .line 241
    const/4 v1, 0x0

    .line 248
    :goto_0
    return-object v1

    .line 242
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    .line 243
    .local v0, n:Lorg/mozilla/javascript/Node;
    :cond_1
    iget-object v1, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    if-eq v1, p1, :cond_2

    .line 244
    iget-object v0, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    .line 245
    if-nez v0, :cond_1

    .line 246
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "node is not a child"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v1, v0

    .line 248
    goto :goto_0
.end method

.method public final getDouble()D
    .locals 2

    .prologue
    .line 548
    check-cast p0, Lorg/mozilla/javascript/ast/NumberLiteral;

    .end local p0
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/NumberLiteral;->getNumber()D

    move-result-wide v0

    return-wide v0
.end method

.method public getExistingIntProp(I)I
    .locals 2
    .parameter "propType"

    .prologue
    .line 513
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Node;->lookupProperty(I)Lorg/mozilla/javascript/Node$PropListItem;

    move-result-object v0

    .line 514
    .local v0, item:Lorg/mozilla/javascript/Node$PropListItem;
    if-nez v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 515
    :cond_0
    iget v1, v0, Lorg/mozilla/javascript/Node$PropListItem;->intValue:I

    return v1
.end method

.method public getFirstChild()Lorg/mozilla/javascript/Node;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    return-object v0
.end method

.method public getIntProp(II)I
    .locals 2
    .parameter "propType"
    .parameter "defaultValue"

    .prologue
    .line 506
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Node;->lookupProperty(I)Lorg/mozilla/javascript/Node$PropListItem;

    move-result-object v0

    .line 507
    .local v0, item:Lorg/mozilla/javascript/Node$PropListItem;
    if-nez v0, :cond_0

    move v1, p2

    .line 508
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lorg/mozilla/javascript/Node$PropListItem;->intValue:I

    goto :goto_0
.end method

.method public getJsDoc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getLastChild()Lorg/mozilla/javascript/Node;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    return-object v0
.end method

.method public getLastSibling()Lorg/mozilla/javascript/Node;
    .locals 2

    .prologue
    .line 252
    move-object v0, p0

    .line 253
    .local v0, n:Lorg/mozilla/javascript/Node;
    :goto_0
    iget-object v1, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    if-eqz v1, :cond_0

    .line 254
    iget-object v0, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    goto :goto_0

    .line 256
    :cond_0
    return-object v0
.end method

.method public getLineno()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lorg/mozilla/javascript/Node;->lineno:I

    return v0
.end method

.method public getNext()Lorg/mozilla/javascript/Node;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    return-object v0
.end method

.method public getProp(I)Ljava/lang/Object;
    .locals 2
    .parameter "propType"

    .prologue
    .line 499
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Node;->lookupProperty(I)Lorg/mozilla/javascript/Node$PropListItem;

    move-result-object v0

    .line 500
    .local v0, item:Lorg/mozilla/javascript/Node$PropListItem;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 501
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lorg/mozilla/javascript/Node$PropListItem;->objectValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getScope()Lorg/mozilla/javascript/ast/Scope;
    .locals 1

    .prologue
    .line 568
    check-cast p0, Lorg/mozilla/javascript/ast/Name;

    .end local p0
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/Name;->getScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    return-object v0
.end method

.method public final getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    check-cast p0, Lorg/mozilla/javascript/ast/Name;

    .end local p0
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return v0
.end method

.method public hasChildren()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConsistentReturnUsage()Z
    .locals 2

    .prologue
    .line 664
    invoke-direct {p0}, Lorg/mozilla/javascript/Node;->endCheck()I

    move-result v0

    .line 665
    .local v0, n:I
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    and-int/lit8 v1, v0, 0xb

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasSideEffects()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 940
    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 1029
    :goto_0
    return v0

    .line 943
    :pswitch_1
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->hasSideEffects()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 946
    goto :goto_0

    .line 949
    :pswitch_2
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    iget-object v0, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    iget-object v0, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    iget-object v0, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    if-nez v0, :cond_2

    .line 952
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 953
    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    iget-object v0, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->hasSideEffects()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    iget-object v0, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    iget-object v0, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->hasSideEffects()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 958
    :pswitch_3
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    if-nez v0, :cond_5

    .line 959
    :cond_4
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 960
    :cond_5
    iget-object v0, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->hasSideEffects()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->hasSideEffects()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 1026
    goto :goto_0

    .line 940
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/mozilla/javascript/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    new-instance v0, Lorg/mozilla/javascript/Node$NodeIterator;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/Node$NodeIterator;-><init>(Lorg/mozilla/javascript/Node;)V

    return-object v0
.end method

.method public final labelId()I
    .locals 2

    .prologue
    .line 587
    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x83

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x48

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 588
    :cond_0
    const/16 v0, 0xf

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v0

    return v0
.end method

.method public labelId(I)V
    .locals 2
    .parameter "labelId"

    .prologue
    .line 593
    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x83

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x48

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 594
    :cond_0
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 595
    return-void
.end method

.method public putIntProp(II)V
    .locals 1
    .parameter "propType"
    .parameter "prop"

    .prologue
    .line 530
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Node;->ensureProperty(I)Lorg/mozilla/javascript/Node$PropListItem;

    move-result-object v0

    .line 531
    .local v0, item:Lorg/mozilla/javascript/Node$PropListItem;
    iput p2, v0, Lorg/mozilla/javascript/Node$PropListItem;->intValue:I

    .line 532
    return-void
.end method

.method public putProp(ILjava/lang/Object;)V
    .locals 1
    .parameter "propType"
    .parameter "prop"

    .prologue
    .line 520
    if-nez p2, :cond_0

    .line 521
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Node;->removeProp(I)V

    .line 526
    :goto_0
    return-void

    .line 523
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Node;->ensureProperty(I)Lorg/mozilla/javascript/Node$PropListItem;

    move-result-object v0

    .line 524
    .local v0, item:Lorg/mozilla/javascript/Node$PropListItem;
    iput-object p2, v0, Lorg/mozilla/javascript/Node$PropListItem;->objectValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeChild(Lorg/mozilla/javascript/Node;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 326
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Node;->getChildBefore(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 327
    .local v0, prev:Lorg/mozilla/javascript/Node;
    if-nez v0, :cond_1

    .line 328
    iget-object v1, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    iget-object v1, v1, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    iput-object v1, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    .line 331
    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    if-ne p1, v1, :cond_0

    iput-object v0, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    .line 332
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p1, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    .line 333
    return-void

    .line 330
    :cond_1
    iget-object v1, p1, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    iput-object v1, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    goto :goto_0
.end method

.method public removeChildren()V
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    iput-object v0, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    .line 359
    return-void
.end method

.method public removeProp(I)V
    .locals 3
    .parameter "propType"

    .prologue
    .line 481
    iget-object v1, p0, Lorg/mozilla/javascript/Node;->propListHead:Lorg/mozilla/javascript/Node$PropListItem;

    .line 482
    .local v1, x:Lorg/mozilla/javascript/Node$PropListItem;
    if-eqz v1, :cond_1

    .line 483
    const/4 v0, 0x0

    .line 484
    .local v0, prev:Lorg/mozilla/javascript/Node$PropListItem;
    :cond_0
    iget v2, v1, Lorg/mozilla/javascript/Node$PropListItem;->type:I

    if-eq v2, p1, :cond_2

    .line 485
    move-object v0, v1

    .line 486
    iget-object v1, v1, Lorg/mozilla/javascript/Node$PropListItem;->next:Lorg/mozilla/javascript/Node$PropListItem;

    .line 487
    if-nez v1, :cond_0

    .line 495
    .end local v0           #prev:Lorg/mozilla/javascript/Node$PropListItem;
    :cond_1
    :goto_0
    return-void

    .line 489
    .restart local v0       #prev:Lorg/mozilla/javascript/Node$PropListItem;
    :cond_2
    if-nez v0, :cond_3

    .line 490
    iget-object v2, v1, Lorg/mozilla/javascript/Node$PropListItem;->next:Lorg/mozilla/javascript/Node$PropListItem;

    iput-object v2, p0, Lorg/mozilla/javascript/Node;->propListHead:Lorg/mozilla/javascript/Node$PropListItem;

    goto :goto_0

    .line 492
    :cond_3
    iget-object v2, v1, Lorg/mozilla/javascript/Node$PropListItem;->next:Lorg/mozilla/javascript/Node$PropListItem;

    iput-object v2, v0, Lorg/mozilla/javascript/Node$PropListItem;->next:Lorg/mozilla/javascript/Node$PropListItem;

    goto :goto_0
.end method

.method public replaceChild(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 2
    .parameter "child"
    .parameter "newChild"

    .prologue
    .line 336
    iget-object v1, p1, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    iput-object v1, p2, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    .line 337
    iget-object v1, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    if-ne p1, v1, :cond_1

    .line 338
    iput-object p2, p0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    .line 343
    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    if-ne p1, v1, :cond_0

    .line 344
    iput-object p2, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    .line 345
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p1, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    .line 346
    return-void

    .line 340
    :cond_1
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Node;->getChildBefore(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 341
    .local v0, prev:Lorg/mozilla/javascript/Node;
    iput-object p2, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    goto :goto_0
.end method

.method public replaceChildAfter(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 2
    .parameter "prevChild"
    .parameter "newChild"

    .prologue
    .line 349
    iget-object v0, p1, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    .line 350
    .local v0, child:Lorg/mozilla/javascript/Node;
    iget-object v1, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    iput-object v1, p2, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    .line 351
    iput-object p2, p1, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    .line 352
    iget-object v1, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    if-ne v0, v1, :cond_0

    .line 353
    iput-object p2, p0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    .line 354
    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    .line 355
    return-void
.end method

.method public final setDouble(D)V
    .locals 0
    .parameter "number"

    .prologue
    .line 552
    check-cast p0, Lorg/mozilla/javascript/ast/NumberLiteral;

    .end local p0
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/ast/NumberLiteral;->setNumber(D)V

    .line 553
    return-void
.end method

.method public setJsDoc(Ljava/lang/String;)V
    .locals 1
    .parameter "jsdoc"

    .prologue
    .line 220
    const/16 v0, 0x18

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    .line 221
    return-void
.end method

.method public setLineno(I)V
    .locals 0
    .parameter "lineno"

    .prologue
    .line 543
    iput p1, p0, Lorg/mozilla/javascript/Node;->lineno:I

    .line 544
    return-void
.end method

.method public setScope(Lorg/mozilla/javascript/ast/Scope;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 573
    if-nez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 574
    :cond_0
    instance-of v0, p0, Lorg/mozilla/javascript/ast/Name;

    if-nez v0, :cond_1

    .line 575
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 577
    :cond_1
    check-cast p0, Lorg/mozilla/javascript/ast/Name;

    .end local p0
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/Name;->setScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 578
    return-void
.end method

.method public final setString(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 562
    if-nez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 563
    :cond_0
    check-cast p0, Lorg/mozilla/javascript/ast/Name;

    .end local p0
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/Name;->setIdentifier(Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method public setType(I)Lorg/mozilla/javascript/Node;
    .locals 0
    .parameter "type"

    .prologue
    .line 203
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    .line 204
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1041
    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringTree(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;
    .locals 1
    .parameter "treeTop"

    .prologue
    .line 1208
    const/4 v0, 0x0

    return-object v0
.end method
