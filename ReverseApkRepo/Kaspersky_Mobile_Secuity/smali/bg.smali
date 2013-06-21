.class public final Lbg;
.super LeM;
.source "SourceFile"


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Ljava/util/List;

.field private synthetic c:Lcom/kms/antispam/ContactsBlocker;


# direct methods
.method public constructor <init>(Lcom/kms/antispam/ContactsBlocker;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lbg;->c:Lcom/kms/antispam/ContactsBlocker;

    iput-object p2, p0, Lbg;->a:Ljava/util/List;

    iput-object p3, p0, Lbg;->b:Ljava/util/List;

    invoke-direct {p0}, LeM;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Lbg;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lbg;->c:Lcom/kms/antispam/ContactsBlocker;

    invoke-static {v0}, Lcom/kms/antispam/ContactsBlocker;->c(Lcom/kms/antispam/ContactsBlocker;)LeJ;

    move-result-object v0

    iget-object v1, p0, Lbg;->c:Lcom/kms/antispam/ContactsBlocker;

    invoke-static {v1}, Lcom/kms/antispam/ContactsBlocker;->b(Lcom/kms/antispam/ContactsBlocker;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, LeJ;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lbg;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :goto_0
    return v2

    .line 187
    :cond_0
    iget-object v0, p0, Lbg;->b:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
