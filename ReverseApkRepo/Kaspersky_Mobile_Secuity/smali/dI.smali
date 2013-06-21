.class public final LdI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/kmsshared/KMSApplication;

.field private synthetic b:Lcom/kms/gui/KMSMain;


# direct methods
.method public constructor <init>(Lcom/kms/gui/KMSMain;Lcom/kms/kmsshared/KMSApplication;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 754
    iput-object p1, p0, LdI;->b:Lcom/kms/gui/KMSMain;

    iput-object p2, p0, LdI;->a:Lcom/kms/kmsshared/KMSApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 757
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfX;

    .line 759
    iget-object v1, p0, LdI;->b:Lcom/kms/gui/KMSMain;

    const/16 v3, 0x1f

    invoke-static {v1, v3}, Lcom/kms/gui/KMSMain;->a(Lcom/kms/gui/KMSMain;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    :goto_0
    return-void

    .line 762
    :cond_0
    invoke-virtual {v0}, LfX;->b()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 763
    :goto_1
    if-eqz v1, :cond_2

    .line 764
    iget-object v3, p0, LdI;->a:Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v3}, Lcom/kms/kmsshared/KMSApplication;->y()V

    .line 768
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, LfX;->a(ILjava/lang/Object;)V

    .line 769
    invoke-virtual {v0}, LfX;->a()V

    .line 770
    iget-object v0, p0, LdI;->b:Lcom/kms/gui/KMSMain;

    invoke-static {v0}, Lcom/kms/gui/KMSMain;->a(Lcom/kms/gui/KMSMain;)Landroid/widget/Button;

    goto :goto_0

    :cond_1
    move v1, v2

    .line 762
    goto :goto_1

    .line 766
    :cond_2
    iget-object v3, p0, LdI;->a:Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v3}, Lcom/kms/kmsshared/KMSApplication;->z()V

    goto :goto_2
.end method
