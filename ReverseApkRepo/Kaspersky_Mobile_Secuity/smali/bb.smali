.class public final Lbb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbk;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lbb;->a:I

    .line 20
    return-void
.end method

.method private a(LfK;IIII)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 24
    .line 25
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/kms/antispam/AntiSpamStorage;->getIterator(I)Ljava/util/Enumeration;

    move-result-object v4

    move v2, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antispam/AntiSpamItem;

    .line 28
    iget v1, v0, Lcom/kms/antispam/AntiSpamItem;->mCellEventTypes:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    instance-of v1, p1, LfL;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 30
    check-cast v1, LfL;

    .line 32
    iget v5, v0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    iget v5, v0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 35
    iget-object v5, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    iget-object v6, v1, LfL;->c:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v1, v1, LfL;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 38
    or-int/lit8 v0, p5, 0x0

    .line 58
    :goto_1
    or-int/2addr v0, v2

    move v2, v0

    .line 59
    goto :goto_0

    .line 41
    :cond_0
    iget v5, v0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    iget v5, v0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_1

    .line 45
    iget-object v0, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    iget-object v1, v1, LfL;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 47
    or-int/lit8 v0, p3, 0x0

    goto :goto_1

    .line 50
    :cond_1
    iget v5, v0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5

    iget v5, v0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_5

    .line 53
    iget-object v1, v1, LfL;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 55
    or-int/lit8 v0, p4, 0x0

    goto :goto_1

    .line 60
    :cond_2
    iget v1, v0, Lcom/kms/antispam/AntiSpamItem;->mCellEventTypes:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    instance-of v1, p1, LfN;

    if-eqz v1, :cond_4

    move-object v1, p1

    .line 62
    check-cast v1, LfN;

    .line 63
    iget v5, v0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    iget-object v0, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    iget-object v1, v1, LfN;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65
    or-int/2addr v2, p3

    move v0, v2

    :goto_2
    move v2, v0

    .line 68
    goto/16 :goto_0

    .line 69
    :cond_3
    return v2

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter
    .parameter

    .prologue
    const/16 v12, 0x2a

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 100
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v1

    .line 105
    :cond_1
    invoke-virtual {p0, p1}, Lbb;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_2

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 118
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 121
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 123
    add-int/lit8 v0, v7, 0x1

    new-array v3, v0, [Z

    .line 124
    add-int/lit8 v0, v7, 0x1

    new-array v0, v0, [Z

    .line 125
    aput-boolean v11, v0, v1

    move-object v2, v0

    move v0, v1

    .line 127
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_a

    .line 129
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 130
    add-int/lit8 v3, v7, 0x1

    new-array v3, v3, [Z

    move v4, v1

    .line 131
    :goto_2
    if-ge v4, v7, :cond_9

    .line 133
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 135
    aget-boolean v10, v2, v4

    if-eqz v10, :cond_4

    if-ne v9, v12, :cond_4

    .line 136
    add-int/lit8 v10, v4, 0x1

    aput-boolean v11, v2, v10

    .line 137
    :cond_4
    aget-boolean v10, v2, v4

    if-eqz v10, :cond_5

    if-ne v9, v8, :cond_5

    .line 138
    add-int/lit8 v10, v4, 0x1

    aput-boolean v11, v3, v10

    .line 139
    :cond_5
    aget-boolean v10, v2, v4

    if-eqz v10, :cond_6

    const/16 v10, 0x3f

    if-ne v9, v10, :cond_6

    .line 140
    add-int/lit8 v10, v4, 0x1

    aput-boolean v11, v3, v10

    .line 141
    :cond_6
    aget-boolean v10, v2, v4

    if-eqz v10, :cond_7

    if-ne v9, v12, :cond_7

    .line 142
    aput-boolean v11, v3, v4

    .line 143
    :cond_7
    aget-boolean v10, v2, v4

    if-eqz v10, :cond_8

    if-ne v9, v12, :cond_8

    .line 144
    add-int/lit8 v9, v4, 0x1

    aput-boolean v11, v3, v9

    .line 131
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 127
    :cond_9
    add-int/lit8 v0, v0, 0x1

    move-object v2, v3

    goto :goto_1

    .line 148
    :cond_a
    aget-boolean v1, v3, v7

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(LfK;)I
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 74
    const/4 v0, 0x0

    .line 76
    iget v1, p0, Lbb;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 78
    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lbb;->a(LfK;IIII)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 80
    :cond_0
    iget v1, p0, Lbb;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 82
    const/16 v5, 0x8

    const/16 v6, 0x10

    const/16 v7, 0x20

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lbb;->a(LfK;IIII)I

    move-result v1

    or-int/2addr v0, v1

    .line 85
    :cond_1
    return v0
.end method

.method public final a()Ljava/util/List;
    .locals 4

    .prologue
    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/kms/antispam/AntiSpamStorage;->getIterator(I)Ljava/util/Enumeration;

    move-result-object v2

    .line 177
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antispam/AntiSpamItem;

    .line 180
    invoke-static {v0}, Lcom/kms/antispam/ContactsBlocker;->a(Lcom/kms/antispam/AntiSpamItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lbb;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 181
    iget-object v0, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_1
    return-object v1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 153
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kms/antispam/AntiSpamStorage;->getIterator(I)Ljava/util/Enumeration;

    move-result-object v2

    .line 155
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antispam/AntiSpamItem;

    .line 157
    invoke-static {v0}, Lcom/kms/antispam/ContactsBlocker;->a(Lcom/kms/antispam/AntiSpamItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    iget-object v0, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 163
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 189
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kms/antispam/AntiSpamStorage;->getIterator(I)Ljava/util/Enumeration;

    move-result-object v2

    .line 190
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antispam/AntiSpamItem;

    .line 193
    invoke-static {v0}, Lcom/kms/antispam/ContactsBlocker;->a(Lcom/kms/antispam/AntiSpamItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lbb;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 197
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 168
    if-eqz p1, :cond_1

    .line 169
    const/16 v1, 0x3f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    const/16 v1, 0x2a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 170
    :cond_1
    return v0
.end method
