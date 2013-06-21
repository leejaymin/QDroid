.class final Lcr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcq;


# direct methods
.method constructor <init>(Lcq;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcr;->a:Lcq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcr;->a:Lcq;

    iget-object v0, v0, Lcq;->a:Lcom/kms/antitheft/gui/SmsFindSettingsActivity;

    invoke-static {v0, v1}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->a(Lcom/kms/antitheft/gui/SmsFindSettingsActivity;Z)Z

    .line 139
    iget-object v0, p0, Lcr;->a:Lcq;

    iget-object v0, v0, Lcq;->a:Lcom/kms/antitheft/gui/SmsFindSettingsActivity;

    iput-boolean v1, v0, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->a:Z

    .line 140
    return-void
.end method
