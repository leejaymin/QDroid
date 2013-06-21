.class public final Lcom/kms/antispam/ContactsBlocker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lej;


# instance fields
.field private a:Lbk;

.field private b:LeJ;

.field private c:Landroid/content/ContentResolver;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Landroid/app/Activity;

.field private g:Lcom/kms/antispam/ContactsBlocker$Mode;

.field private h:Ljava/lang/String;


# direct methods
.method private constructor <init>(LeJ;Lcom/kms/antispam/ContactsBlocker$Mode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/kms/antispam/ContactsBlocker;->b:LeJ;

    .line 79
    iput-object p2, p0, Lcom/kms/antispam/ContactsBlocker;->g:Lcom/kms/antispam/ContactsBlocker$Mode;

    .line 80
    return-void
.end method

.method public static synthetic a(Lcom/kms/antispam/ContactsBlocker;)Lbk;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kms/antispam/ContactsBlocker;->a:Lbk;

    return-object v0
.end method

.method private static a(Landroid/app/Activity;Lcom/kms/antispam/ContactsBlocker$Mode;)Lcom/kms/antispam/ContactsBlocker;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 248
    invoke-static {}, LeJ;->a()LeJ;

    move-result-object v0

    .line 249
    if-eqz p0, :cond_0

    .line 250
    const v1, 0x7f080021

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LeJ;->a(Ljava/lang/String;)V

    .line 253
    :cond_0
    new-instance v1, Lcom/kms/antispam/ContactsBlocker;

    invoke-direct {v1, v0, p1}, Lcom/kms/antispam/ContactsBlocker;-><init>(LeJ;Lcom/kms/antispam/ContactsBlocker$Mode;)V

    .line 254
    invoke-direct {v1, p0}, Lcom/kms/antispam/ContactsBlocker;->b(Landroid/app/Activity;)V

    .line 255
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/kms/antispam/ContactsBlocker;->a(Landroid/content/ContentResolver;)V

    .line 256
    sget-object v0, Lcom/kms/antispam/ContactsBlocker$Mode;->UNINSTALL:Lcom/kms/antispam/ContactsBlocker$Mode;

    if-eq p1, v0, :cond_1

    .line 257
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->A()Lbk;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/kms/antispam/ContactsBlocker;->a(Lbk;)V

    .line 260
    :cond_1
    return-object v1
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 271
    sget-object v0, Lcom/kms/antispam/ContactsBlocker$Mode;->UNINSTALL:Lcom/kms/antispam/ContactsBlocker$Mode;

    invoke-static {p0, v0}, Lcom/kms/antispam/ContactsBlocker;->a(Landroid/app/Activity;Lcom/kms/antispam/ContactsBlocker$Mode;)Lcom/kms/antispam/ContactsBlocker;

    move-result-object v0

    .line 272
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/kms/antispam/ContactsBlocker;->a(Z)V

    .line 273
    invoke-direct {v0}, Lcom/kms/antispam/ContactsBlocker;->f()V

    .line 274
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/kms/antispam/AntiSpamItem;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 311
    invoke-static {}, Lcom/kms/antispam/ContactsBlocker;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    if-eqz p1, :cond_2

    .line 315
    invoke-static {p1}, Lcom/kms/antispam/ContactsBlocker;->a(Lcom/kms/antispam/AntiSpamItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    sget-object v0, Lcom/kms/antispam/ContactsBlocker$Mode;->DELETE:Lcom/kms/antispam/ContactsBlocker$Mode;

    invoke-static {p0, v0}, Lcom/kms/antispam/ContactsBlocker;->a(Landroid/app/Activity;Lcom/kms/antispam/ContactsBlocker$Mode;)Lcom/kms/antispam/ContactsBlocker;

    move-result-object v0

    .line 317
    iget-object v1, p1, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/kms/antispam/ContactsBlocker;->b(Ljava/lang/String;)V

    .line 318
    invoke-direct {v0}, Lcom/kms/antispam/ContactsBlocker;->f()V

    goto :goto_0

    .line 320
    :cond_2
    if-nez p1, :cond_0

    .line 321
    sget-object v0, Lcom/kms/antispam/ContactsBlocker$Mode;->DELETE:Lcom/kms/antispam/ContactsBlocker$Mode;

    invoke-static {p0, v0}, Lcom/kms/antispam/ContactsBlocker;->a(Landroid/app/Activity;Lcom/kms/antispam/ContactsBlocker$Mode;)Lcom/kms/antispam/ContactsBlocker;

    move-result-object v0

    invoke-direct {v0}, Lcom/kms/antispam/ContactsBlocker;->f()V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 241
    if-eqz p1, :cond_0

    sget-object v0, Lcom/kms/antispam/ContactsBlocker$Mode;->ON:Lcom/kms/antispam/ContactsBlocker$Mode;

    .line 242
    :goto_0
    invoke-static {p0, v0}, Lcom/kms/antispam/ContactsBlocker;->a(Landroid/app/Activity;Lcom/kms/antispam/ContactsBlocker$Mode;)Lcom/kms/antispam/ContactsBlocker;

    move-result-object v0

    .line 243
    invoke-direct {v0}, Lcom/kms/antispam/ContactsBlocker;->f()V

    .line 244
    return-void

    .line 241
    :cond_0
    sget-object v0, Lcom/kms/antispam/ContactsBlocker$Mode;->OFF:Lcom/kms/antispam/ContactsBlocker$Mode;

    goto :goto_0
.end method

.method private a(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/kms/antispam/ContactsBlocker;->c:Landroid/content/ContentResolver;

    .line 40
    return-void
.end method

.method private a(Lbk;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/kms/antispam/ContactsBlocker;->a:Lbk;

    .line 36
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/kms/antispam/ContactsBlocker;->h:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/kms/antispam/ContactsBlocker;->e:Z

    .line 74
    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 158
    const/4 v0, 0x0

    .line 159
    if-eqz p1, :cond_2

    .line 161
    iget-object v3, p0, Lcom/kms/antispam/ContactsBlocker;->a:Lbk;

    invoke-interface {v3}, Lbk;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    new-instance v0, Lbf;

    invoke-direct {v0, p0, v1, v2}, Lbf;-><init>(Lcom/kms/antispam/ContactsBlocker;Ljava/util/List;Ljava/util/List;)V

    .line 219
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 220
    iget-object v3, p0, Lcom/kms/antispam/ContactsBlocker;->b:LeJ;

    iget-object v4, p0, Lcom/kms/antispam/ContactsBlocker;->c:Landroid/content/ContentResolver;

    invoke-virtual {v3, v4, v0}, LeJ;->a(Landroid/content/ContentResolver;LeM;)V

    .line 221
    iget-object v0, p0, Lcom/kms/antispam/ContactsBlocker;->b:LeJ;

    iget-object v3, p0, Lcom/kms/antispam/ContactsBlocker;->c:Landroid/content/ContentResolver;

    invoke-virtual {v0, v3, v1, v2}, LeJ;->a(Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/List;)V

    .line 228
    :cond_1
    return-void

    .line 177
    :cond_2
    invoke-static {p2}, Lfn;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 178
    iget-object v3, p0, Lcom/kms/antispam/ContactsBlocker;->a:Lbk;

    invoke-interface {v3}, Lbk;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    new-instance v0, Lbg;

    invoke-direct {v0, p0, v1, v2}, Lbg;-><init>(Lcom/kms/antispam/ContactsBlocker;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 194
    :cond_3
    new-instance v0, Lbh;

    invoke-direct {v0, p0, v1, v2}, Lbh;-><init>(Lcom/kms/antispam/ContactsBlocker;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/kms/antispam/AntiSpamItem;Ljava/lang/String;Z)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 298
    invoke-static {}, Lcom/kms/antispam/ContactsBlocker;->h()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/kms/antispam/ContactsBlocker;->a(Lcom/kms/antispam/AntiSpamItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/kms/antispam/AntiSpamItem;->mItemType:I

    if-ne v1, v0, :cond_0

    .line 300
    sget-object v1, Lcom/kms/antispam/ContactsBlocker$Mode;->UPDATE:Lcom/kms/antispam/ContactsBlocker$Mode;

    invoke-static {p0, v1}, Lcom/kms/antispam/ContactsBlocker;->a(Landroid/app/Activity;Lcom/kms/antispam/ContactsBlocker$Mode;)Lcom/kms/antispam/ContactsBlocker;

    move-result-object v1

    .line 301
    iget-object v2, p1, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/kms/antispam/ContactsBlocker;->b(Ljava/lang/String;)V

    .line 302
    invoke-direct {v1, p2}, Lcom/kms/antispam/ContactsBlocker;->a(Ljava/lang/String;)V

    .line 303
    invoke-direct {v1, v0}, Lcom/kms/antispam/ContactsBlocker;->a(Z)V

    .line 304
    invoke-direct {v1}, Lcom/kms/antispam/ContactsBlocker;->f()V

    .line 307
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/kms/antispam/AntiSpamItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 336
    iget v1, p0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/kms/antispam/AntiSpamItem;->mCellEventTypes:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic b(Lcom/kms/antispam/ContactsBlocker;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kms/antispam/ContactsBlocker;->c:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private b(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/kms/antispam/ContactsBlocker;->f:Landroid/app/Activity;

    .line 44
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/kms/antispam/ContactsBlocker;->d:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static synthetic c(Lcom/kms/antispam/ContactsBlocker;)LeJ;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kms/antispam/ContactsBlocker;->b:LeJ;

    return-object v0
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 277
    const/4 v0, 0x0

    sget-object v1, Lcom/kms/antispam/ContactsBlocker$Mode;->UNINSTALL:Lcom/kms/antispam/ContactsBlocker$Mode;

    invoke-static {v0, v1}, Lcom/kms/antispam/ContactsBlocker;->a(Landroid/app/Activity;Lcom/kms/antispam/ContactsBlocker$Mode;)Lcom/kms/antispam/ContactsBlocker;

    move-result-object v0

    .line 278
    invoke-direct {v0}, Lcom/kms/antispam/ContactsBlocker;->g()V

    .line 279
    return-void
.end method

.method public static e()Z
    .locals 2

    .prologue
    .line 341
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 5

    .prologue
    .line 264
    new-instance v0, Leb;

    iget-object v1, p0, Lcom/kms/antispam/ContactsBlocker;->f:Landroid/app/Activity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kms/antispam/ContactsBlocker;->f:Landroid/app/Activity;

    const v4, 0x7f080292

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, Leb;-><init>(Landroid/app/Activity;Lej;ILjava/lang/String;)V

    invoke-virtual {v0}, Leb;->a()V

    .line 268
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 282
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbi;

    invoke-direct {v1, p0}, Lbi;-><init>(Lcom/kms/antispam/ContactsBlocker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 288
    return-void
.end method

.method private static h()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 329
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfY;

    .line 331
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, LfY;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 332
    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/kms/antispam/ContactsBlocker;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kms/antispam/ContactsBlocker;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/kms/antispam/ContactsBlocker;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 238
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method public final c()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    sget-object v0, Lbj;->a:[I

    iget-object v1, p0, Lcom/kms/antispam/ContactsBlocker;->g:Lcom/kms/antispam/ContactsBlocker$Mode;

    invoke-virtual {v1}, Lcom/kms/antispam/ContactsBlocker$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 151
    :cond_0
    :goto_0
    const/16 v0, 0x64

    return v0

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/kms/antispam/ContactsBlocker;->b:LeJ;

    iget-object v1, p0, Lcom/kms/antispam/ContactsBlocker;->c:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/kms/antispam/ContactsBlocker;->a:Lbk;

    invoke-interface {v2}, Lbk;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, LeJ;->a(Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 94
    invoke-direct {p0, v3, v5}, Lcom/kms/antispam/ContactsBlocker;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_1
    iget-object v0, p0, Lcom/kms/antispam/ContactsBlocker;->b:LeJ;

    iget-object v1, p0, Lcom/kms/antispam/ContactsBlocker;->c:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/kms/antispam/ContactsBlocker;->a:Lbk;

    invoke-interface {v2}, Lbk;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, LeJ;->a(Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 99
    invoke-direct {p0, v4, v5}, Lcom/kms/antispam/ContactsBlocker;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v0, p0, Lcom/kms/antispam/ContactsBlocker;->d:Ljava/lang/String;

    invoke-static {v0}, Lfn;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not null PhoneNumberMask is expected!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/kms/antispam/ContactsBlocker;->a:Lbk;

    iget-object v1, p0, Lcom/kms/antispam/ContactsBlocker;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbk;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/kms/antispam/ContactsBlocker;->d:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/kms/antispam/ContactsBlocker;->a(ZLjava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/kms/antispam/ContactsBlocker;->h:Ljava/lang/String;

    invoke-static {v0}, Lfn;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kms/antispam/ContactsBlocker;->a:Lbk;

    iget-object v1, p0, Lcom/kms/antispam/ContactsBlocker;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbk;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iget-object v1, p0, Lcom/kms/antispam/ContactsBlocker;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v1, p0, Lcom/kms/antispam/ContactsBlocker;->b:LeJ;

    iget-object v2, p0, Lcom/kms/antispam/ContactsBlocker;->c:Landroid/content/ContentResolver;

    invoke-virtual {v1, v2, v0, v3}, LeJ;->a(Landroid/content/ContentResolver;Ljava/util/List;Z)V

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/kms/antispam/ContactsBlocker;->a:Lbk;

    iget-object v1, p0, Lcom/kms/antispam/ContactsBlocker;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbk;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    iget-object v0, p0, Lcom/kms/antispam/ContactsBlocker;->h:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/kms/antispam/ContactsBlocker;->a(ZLjava/lang/String;)V

    .line 124
    :cond_3
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    iget-object v1, p0, Lcom/kms/antispam/ContactsBlocker;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v1, p0, Lcom/kms/antispam/ContactsBlocker;->b:LeJ;

    iget-object v2, p0, Lcom/kms/antispam/ContactsBlocker;->c:Landroid/content/ContentResolver;

    invoke-virtual {v1, v2, v0, v4}, LeJ;->a(Landroid/content/ContentResolver;Ljava/util/List;Z)V

    goto/16 :goto_0

    .line 118
    :cond_4
    iget-object v0, p0, Lcom/kms/antispam/ContactsBlocker;->h:Ljava/lang/String;

    invoke-static {v0}, Lfn;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    iget-object v1, p0, Lcom/kms/antispam/ContactsBlocker;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v1, p0, Lcom/kms/antispam/ContactsBlocker;->b:LeJ;

    iget-object v2, p0, Lcom/kms/antispam/ContactsBlocker;->c:Landroid/content/ContentResolver;

    invoke-virtual {v1, v2, v0, v3}, LeJ;->a(Landroid/content/ContentResolver;Ljava/util/List;Z)V

    goto :goto_1

    .line 131
    :pswitch_3
    iget-object v0, p0, Lcom/kms/antispam/ContactsBlocker;->a:Lbk;

    iget-object v1, p0, Lcom/kms/antispam/ContactsBlocker;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbk;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    iget-object v0, p0, Lcom/kms/antispam/ContactsBlocker;->d:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/kms/antispam/ContactsBlocker;->a(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 134
    :cond_5
    iget-object v0, p0, Lcom/kms/antispam/ContactsBlocker;->d:Ljava/lang/String;

    invoke-static {v0}, Lfn;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 135
    invoke-direct {p0, v3, v5}, Lcom/kms/antispam/ContactsBlocker;->a(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 137
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    iget-object v1, p0, Lcom/kms/antispam/ContactsBlocker;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v1, p0, Lcom/kms/antispam/ContactsBlocker;->b:LeJ;

    iget-object v2, p0, Lcom/kms/antispam/ContactsBlocker;->c:Landroid/content/ContentResolver;

    invoke-virtual {v1, v2, v0, v3}, LeJ;->a(Landroid/content/ContentResolver;Ljava/util/List;Z)V

    goto/16 :goto_0

    .line 145
    :pswitch_4
    iget-object v0, p0, Lcom/kms/antispam/ContactsBlocker;->b:LeJ;

    iget-object v1, p0, Lcom/kms/antispam/ContactsBlocker;->c:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/kms/antispam/ContactsBlocker;->e()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, LeJ;->a(Landroid/content/ContentResolver;Z)V

    .line 147
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/kms/antispam/AntiSpamStorage;->deleteAll(I)I

    goto/16 :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
