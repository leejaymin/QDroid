.class public Lcom/scoreloop/client/android/core/model/AddressBook;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/security/MessageDigest;

.field private e:Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/scoreloop/client/android/core/model/AddressBook;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;->SHA1:Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/model/AddressBook;->a(Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;)V

    .line 59
    return-void
.end method

.method public static a(Lcom/scoreloop/client/android/core/model/Session;)Lcom/scoreloop/client/android/core/model/AddressBook;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/core/model/Session;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/AddressBook;

    .line 50
    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/scoreloop/client/android/core/model/AddressBook;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/model/AddressBook;-><init>()V

    .line 52
    invoke-virtual {p0, v1, v0}, Lcom/scoreloop/client/android/core/model/Session;->a(ILjava/lang/Object;)V

    .line 54
    :cond_0
    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 80
    sget-object v1, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    sget-object v2, Lcom/scoreloop/client/android/core/model/AddressBook;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    if-eqz v0, :cond_1

    .line 83
    const-string v2, "data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 84
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    :cond_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/AddressBook;->d:Ljava/security/MessageDigest;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/AddressBook;->e:Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;->a(Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/AddressBook;->d:Ljava/security/MessageDigest;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/AddressBook;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/scoreloop/client/android/core/model/AddressBook;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/AddressBook;->d:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    :try_start_0
    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/AddressBook;->d:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\t"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/AddressBook;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/AddressBook;->d:Ljava/security/MessageDigest;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/AddressBook;->c:Ljava/lang/String;

    const-string v3, "UTF8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/AddressBook;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/AddressBook;->d:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/scoreloop/client/android/core/util/Base64;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unsupported encoding"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/AddressBook;->b:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/AddressBook;->e:Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/AddressBook;->d:Ljava/security/MessageDigest;

    if-nez v0, :cond_1

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/AddressBook;->e:Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/AddressBook;->d:Ljava/security/MessageDigest;

    .line 66
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/AddressBook;->c:Ljava/lang/String;

    .line 75
    return-void
.end method
