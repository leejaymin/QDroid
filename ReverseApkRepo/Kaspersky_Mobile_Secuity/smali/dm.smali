.class final Ldm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Ldl;


# direct methods
.method constructor <init>(Ldl;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Ldm;->b:Ldl;

    iput p2, p0, Ldm;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 546
    iget-object v0, p0, Ldm;->b:Ldl;

    iget-object v0, v0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v0}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;

    move-result-object v0

    iget v1, p0, Ldm;->a:I

    aget-object v0, v0, v1

    check-cast v0, Ldj;

    .line 547
    iget-object v1, p0, Ldm;->b:Ldl;

    iget-object v1, v1, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-virtual {v1}, Lcom/kms/gui/KMSCommonSettingsActivity;->d_()V

    .line 548
    invoke-virtual {v0}, Ldj;->b()V

    .line 549
    return-void
.end method
