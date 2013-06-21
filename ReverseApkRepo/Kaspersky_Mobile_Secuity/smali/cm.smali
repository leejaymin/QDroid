.class public final Lcm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcm;->a:Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Lcm;->a:Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;

    invoke-virtual {v0}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->finish()V

    .line 282
    return-void
.end method
