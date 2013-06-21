.class public Lgnu/kawa/functions/IsEqual;
.super Lgnu/mapping/Procedure2;
.source "IsEqual.java"


# instance fields
.field language:Lgnu/expr/Language;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;Ljava/lang/String;)V
    .locals 0
    .parameter "language"
    .parameter "name"

    .prologue
    .line 13
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    .line 14
    iput-object p1, p0, Lgnu/kawa/functions/IsEqual;->language:Lgnu/expr/Language;

    .line 15
    invoke-virtual {p0, p2}, Lgnu/kawa/functions/IsEqual;->setName(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 20
    if-ne p0, p1, :cond_0

    .line 21
    const/4 p0, 0x1

    .line 118
    .end local p0
    .end local p1
    :goto_0
    return p0

    .line 22
    .restart local p0
    .restart local p1
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 23
    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    .line 27
    :cond_2
    instance-of v1, p0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_7

    .line 29
    instance-of v1, p1, Ljava/lang/CharSequence;

    if-nez v1, :cond_3

    .line 30
    const/4 p0, 0x0

    goto :goto_0

    .line 31
    :cond_3
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    move-object v1, v0

    .line 32
    .local v1, seq1:Ljava/lang/CharSequence;
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v2, v0

    .line 33
    .local v2, seq2:Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    .line 34
    .local p0, len1:I
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    .line 35
    .local p1, len2:I
    if-eq p0, p1, :cond_4

    .line 36
    const/4 p0, 0x0

    goto :goto_0

    .line 37
    :cond_4
    move p0, p0

    .end local p1           #len2:I
    .local p0, i:I
    :cond_5
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_6

    .line 39
    invoke-interface {v1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-interface {v2, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq p1, v3, :cond_5

    .line 40
    const/4 p0, 0x0

    goto :goto_0

    .line 42
    :cond_6
    const/4 p0, 0x1

    goto :goto_0

    .line 76
    .end local v1           #seq1:Ljava/lang/CharSequence;
    .end local v2           #seq2:Ljava/lang/CharSequence;
    .local p0, arg1:Ljava/lang/Object;
    .local p1, arg2:Ljava/lang/Object;
    :cond_7
    instance-of v1, p0, Lgnu/lists/FVector;

    if-eqz v1, :cond_d

    .line 78
    instance-of v1, p1, Lgnu/lists/FVector;

    if-nez v1, :cond_8

    .line 79
    const/4 p0, 0x0

    goto :goto_0

    .line 80
    :cond_8
    check-cast p0, Lgnu/lists/FVector;

    .line 81
    .local p0, vec1:Lgnu/lists/FVector;
    check-cast p1, Lgnu/lists/FVector;

    .line 82
    .local p1, vec2:Lgnu/lists/FVector;
    iget v1, p0, Lgnu/lists/FVector;->size:I

    .line 83
    .local v1, n:I
    iget-object v2, p1, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    if-eqz v2, :cond_9

    iget v2, p1, Lgnu/lists/FVector;->size:I

    if-eq v2, v1, :cond_a

    .line 84
    :cond_9
    const/4 p0, 0x0

    goto :goto_0

    .line 85
    :cond_a
    iget-object p0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 86
    .local p0, data1:[Ljava/lang/Object;
    iget-object p1, p1, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 87
    .local p1, data2:[Ljava/lang/Object;
    move v1, v1

    .local v1, i:I
    :cond_b
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_c

    .line 89
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-static {v2, v3}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 90
    const/4 p0, 0x0

    goto :goto_0

    .line 92
    :cond_c
    const/4 p0, 0x1

    goto :goto_0

    .line 94
    .end local v1           #i:I
    .local p0, arg1:Ljava/lang/Object;
    .local p1, arg2:Ljava/lang/Object;
    :cond_d
    instance-of v1, p0, Lgnu/lists/LList;

    if-eqz v1, :cond_16

    .line 96
    instance-of v1, p0, Lgnu/lists/Pair;

    if-eqz v1, :cond_e

    instance-of v1, p1, Lgnu/lists/Pair;

    if-nez v1, :cond_f

    .line 97
    :cond_e
    const/4 p0, 0x0

    goto :goto_0

    .line 98
    :cond_f
    check-cast p0, Lgnu/lists/Pair;

    .line 99
    .local p0, pair1:Lgnu/lists/Pair;
    check-cast p1, Lgnu/lists/Pair;

    .line 102
    .local p1, pair2:Lgnu/lists/Pair;
    :goto_1
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 103
    .local v1, x1:Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    .line 104
    .local v2, x2:Ljava/lang/Object;
    invoke-static {v1, v2}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .end local v1           #x1:Ljava/lang/Object;
    if-nez v1, :cond_10

    .line 105
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 106
    :cond_10
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    .line 107
    .local p0, x1:Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 108
    .end local v2           #x2:Ljava/lang/Object;
    .local p1, x2:Ljava/lang/Object;
    if-ne p0, p1, :cond_11

    .line 109
    const/4 p0, 0x1

    goto/16 :goto_0

    .line 110
    :cond_11
    if-eqz p0, :cond_12

    if-nez p1, :cond_13

    .line 111
    :cond_12
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 112
    :cond_13
    instance-of v1, p0, Lgnu/lists/Pair;

    if-eqz v1, :cond_14

    instance-of v1, p1, Lgnu/lists/Pair;

    if-nez v1, :cond_15

    .line 113
    :cond_14
    invoke-static {p0, p1}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto/16 :goto_0

    .line 114
    :cond_15
    check-cast p0, Lgnu/lists/Pair;

    .line 115
    .local p0, pair1:Lgnu/lists/Pair;
    check-cast p1, Lgnu/lists/Pair;

    .line 116
    .local p1, pair2:Lgnu/lists/Pair;
    goto :goto_1

    .line 118
    .local p0, arg1:Ljava/lang/Object;
    .local p1, arg2:Ljava/lang/Object;
    :cond_16
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto/16 :goto_0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 123
    iget-object v0, p0, Lgnu/kawa/functions/IsEqual;->language:Lgnu/expr/Language;

    invoke-static {p1, p2}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
