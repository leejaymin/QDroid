.class public final LdS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/LicenseExpiredInfoActivity;


# direct methods
.method public constructor <init>(Lcom/kms/gui/LicenseExpiredInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, LdS;->a:Lcom/kms/gui/LicenseExpiredInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, LdS;->a:Lcom/kms/gui/LicenseExpiredInfoActivity;

    invoke-virtual {v0}, Lcom/kms/gui/LicenseExpiredInfoActivity;->finish()V

    .line 46
    return-void
.end method
