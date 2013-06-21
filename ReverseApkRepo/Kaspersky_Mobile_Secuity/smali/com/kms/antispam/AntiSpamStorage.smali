.class public Lcom/kms/antispam/AntiSpamStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final STORAGE_CANT_FIND_ITEM:I = 0x3

.field public static final STORAGE_FAIL:I = 0x1

.field public static final STORAGE_GOOD:I = 0x0

.field public static final STORAGE_INVALID_ITEM:I = 0x4

.field public static final STORAGE_ITEM_ALREADY_EXISTS:I = 0x2

.field private static a:Ljava/lang/Object; = null

.field private static b:Lcom/kms/antispam/AntiSpamStorage; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mBlackItems:Ljava/util/Vector;

.field private mWhiteItems:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kms/antispam/AntiSpamStorage;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    .line 33
    return-void
.end method

.method private static a()Lcom/kms/antispam/AntiSpamStorage;
    .locals 3

    .prologue
    .line 52
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/io/File;

    const-string v2, "antispamfolders.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    invoke-static {v1}, LS;->a(Ljava/io/File;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/kms/antispam/AntiSpamStorage;

    .line 55
    if-nez v0, :cond_0

    new-instance v0, Lcom/kms/antispam/AntiSpamStorage;

    invoke-direct {v0}, Lcom/kms/antispam/AntiSpamStorage;-><init>()V

    :cond_0
    return-object v0
.end method

.method private static a(Lcom/kms/antispam/AntiSpamItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 200
    if-eqz p0, :cond_0

    iget v1, p0, Lcom/kms/antispam/AntiSpamItem;->mCellEventTypes:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kms/antispam/AntiSpamItem;->mItemType:I

    if-eq v1, v0, :cond_1

    iget v1, p0, Lcom/kms/antispam/AntiSpamItem;->mItemType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 202
    :cond_0
    const/4 v0, 0x0

    .line 204
    :cond_1
    return v0
.end method

.method private static a(Ljava/util/Vector;Lcom/kms/antispam/AntiSpamItem;I)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 224
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 226
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antispam/AntiSpamItem;

    .line 227
    if-eq v1, p2, :cond_1

    .line 229
    invoke-virtual {v0, p1}, Lcom/kms/antispam/AntiSpamItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    const/4 v2, 0x1

    .line 235
    :cond_0
    return v2

    .line 224
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private b()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 193
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 194
    new-instance v2, Ljava/io/File;

    const-string v3, "antispamfolders.dat"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 196
    invoke-static {v2, p0}, LS;->a(Ljava/io/File;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized instance()Lcom/kms/antispam/AntiSpamStorage;
    .locals 2

    .prologue
    .line 36
    const-class v1, Lcom/kms/antispam/AntiSpamStorage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kms/antispam/AntiSpamStorage;->b:Lcom/kms/antispam/AntiSpamStorage;

    if-nez v0, :cond_0

    .line 37
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->a()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    sput-object v0, Lcom/kms/antispam/AntiSpamStorage;->b:Lcom/kms/antispam/AntiSpamStorage;

    .line 39
    :cond_0
    sget-object v0, Lcom/kms/antispam/AntiSpamStorage;->b:Lcom/kms/antispam/AntiSpamStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public checkItemExists(Lcom/kms/antispam/AntiSpamItem;)Z
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 208
    invoke-virtual {p0, p1, v0, v0}, Lcom/kms/antispam/AntiSpamStorage;->checkItemExists(Lcom/kms/antispam/AntiSpamItem;II)Z

    move-result v0

    return v0
.end method

.method public checkItemExists(Lcom/kms/antispam/AntiSpamItem;II)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 212
    packed-switch p2, :pswitch_data_0

    .line 219
    iget-object v2, p0, Lcom/kms/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    invoke-static {v2, p1, v3}, Lcom/kms/antispam/AntiSpamStorage;->a(Ljava/util/Vector;Lcom/kms/antispam/AntiSpamItem;I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/kms/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    invoke-static {v2, p1, v3}, Lcom/kms/antispam/AntiSpamStorage;->a(Ljava/util/Vector;Lcom/kms/antispam/AntiSpamItem;I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    .line 215
    :pswitch_0
    iget-object v2, p0, Lcom/kms/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    invoke-static {v2, p1, p3}, Lcom/kms/antispam/AntiSpamStorage;->a(Ljava/util/Vector;Lcom/kms/antispam/AntiSpamItem;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/kms/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    invoke-static {v2, p1, v3}, Lcom/kms/antispam/AntiSpamStorage;->a(Ljava/util/Vector;Lcom/kms/antispam/AntiSpamItem;I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    move v0, v1

    goto :goto_0

    .line 217
    :pswitch_1
    iget-object v2, p0, Lcom/kms/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    invoke-static {v2, p1, v3}, Lcom/kms/antispam/AntiSpamStorage;->a(Ljava/util/Vector;Lcom/kms/antispam/AntiSpamItem;I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/kms/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    invoke-static {v2, p1, p3}, Lcom/kms/antispam/AntiSpamStorage;->a(Ljava/util/Vector;Lcom/kms/antispam/AntiSpamItem;I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public create(Lcom/kms/antispam/AntiSpamItem;)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x2

    .line 59
    invoke-static {p1}, Lcom/kms/antispam/AntiSpamStorage;->a(Lcom/kms/antispam/AntiSpamItem;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    invoke-virtual {p0, p1}, Lcom/kms/antispam/AntiSpamStorage;->checkItemExists(Lcom/kms/antispam/AntiSpamItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 63
    goto :goto_0

    .line 65
    :cond_2
    iget v2, p1, Lcom/kms/antispam/AntiSpamItem;->mItemType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 66
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 72
    :goto_1
    invoke-direct {p0}, Lcom/kms/antispam/AntiSpamStorage;->b()I

    move-result v0

    goto :goto_0

    .line 67
    :cond_3
    iget v2, p1, Lcom/kms/antispam/AntiSpamItem;->mItemType:I

    if-ne v2, v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public delete(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    .line 107
    :goto_0
    if-ltz p2, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 108
    invoke-virtual {v0, p2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 109
    invoke-direct {p0}, Lcom/kms/antispam/AntiSpamStorage;->b()I

    move-result v0

    .line 111
    :goto_1
    return v0

    .line 102
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    goto :goto_0

    .line 105
    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    .line 111
    :cond_2
    const/4 v0, 0x3

    goto :goto_1
.end method

.method public deleteAll(I)I
    .locals 1
    .parameter

    .prologue
    .line 117
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    .line 131
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 132
    invoke-direct {p0}, Lcom/kms/antispam/AntiSpamStorage;->b()I

    move-result v0

    :goto_1
    return v0

    .line 122
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    goto :goto_0

    .line 128
    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public getCount(I)I
    .locals 1
    .parameter

    .prologue
    .line 239
    packed-switch p1, :pswitch_data_0

    .line 245
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 241
    :pswitch_0
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    .line 243
    :pswitch_1
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItem(II)Lcom/kms/antispam/AntiSpamItem;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 170
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    .line 184
    :goto_0
    if-ltz p2, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 186
    new-instance v1, Lcom/kms/antispam/AntiSpamItem;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antispam/AntiSpamItem;

    invoke-direct {v1, v0}, Lcom/kms/antispam/AntiSpamItem;-><init>(Lcom/kms/antispam/AntiSpamItem;)V

    return-object v1

    .line 175
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    goto :goto_0

    .line 181
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 188
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getIterator(I)Ljava/util/Enumeration;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 136
    packed-switch p1, :pswitch_data_0

    .line 154
    new-instance v0, Lba;

    invoke-direct {v0, p0}, Lba;-><init>(Lcom/kms/antispam/AntiSpamStorage;)V

    :goto_0
    return-object v0

    .line 139
    :pswitch_0
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move v1, v0

    .line 140
    :goto_1
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 141
    new-instance v3, Lcom/kms/antispam/AntiSpamItem;

    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antispam/AntiSpamItem;

    invoke-direct {v3, v0}, Lcom/kms/antispam/AntiSpamItem;-><init>(Lcom/kms/antispam/AntiSpamItem;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 140
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 143
    :cond_0
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0

    .line 147
    :pswitch_1
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move v1, v0

    .line 148
    :goto_2
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 149
    new-instance v3, Lcom/kms/antispam/AntiSpamItem;

    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antispam/AntiSpamItem;

    invoke-direct {v3, v0}, Lcom/kms/antispam/AntiSpamItem;-><init>(Lcom/kms/antispam/AntiSpamItem;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 148
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 151
    :cond_1
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public importItems(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 43
    sget-object v1, Lcom/kms/antispam/AntiSpamStorage;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    iput-object p1, p0, Lcom/kms/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    .line 45
    iput-object p2, p0, Lcom/kms/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    .line 46
    invoke-direct {p0}, Lcom/kms/antispam/AntiSpamStorage;->b()I

    .line 47
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public update(IILcom/kms/antispam/AntiSpamItem;)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x2

    .line 76
    invoke-static {p3}, Lcom/kms/antispam/AntiSpamStorage;->a(Lcom/kms/antispam/AntiSpamItem;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    if-ne p1, v3, :cond_2

    iget v2, p3, Lcom/kms/antispam/AntiSpamItem;->mItemType:I

    if-ne v2, v3, :cond_2

    .line 81
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    .line 88
    :goto_1
    if-ltz p2, :cond_4

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge p2, v2, :cond_4

    .line 89
    invoke-virtual {p0, p3, p1, p2}, Lcom/kms/antispam/AntiSpamStorage;->checkItemExists(Lcom/kms/antispam/AntiSpamItem;II)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 90
    goto :goto_0

    .line 82
    :cond_2
    if-ne p1, v1, :cond_0

    iget v2, p3, Lcom/kms/antispam/AntiSpamItem;->mItemType:I

    if-ne v2, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {v0, p3, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 93
    invoke-direct {p0}, Lcom/kms/antispam/AntiSpamStorage;->b()I

    move-result v0

    goto :goto_0

    .line 95
    :cond_4
    const/4 v0, 0x3

    goto :goto_0
.end method
