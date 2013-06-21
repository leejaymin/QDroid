.class public final Lbf;
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
    .line 162
    iput-object p1, p0, Lbf;->c:Lcom/kms/antispam/ContactsBlocker;

    iput-object p2, p0, Lbf;->a:Ljava/util/List;

    iput-object p3, p0, Lbf;->b:Ljava/util/List;

    invoke-direct {p0}, LeM;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 165
    iget-object v1, p0, Lbf;->c:Lcom/kms/antispam/ContactsBlocker;

    invoke-static {v1}, Lcom/kms/antispam/ContactsBlocker;->a(Lcom/kms/antispam/ContactsBlocker;)Lbk;

    move-result-object v1

    invoke-interface {v1, p2}, Lbk;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lbf;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v1, p0, Lbf;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    const/4 v0, 0x0

    .line 171
    :cond_0
    return v0
.end method
