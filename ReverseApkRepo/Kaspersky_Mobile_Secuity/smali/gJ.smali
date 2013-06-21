.class public final LgJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;


# direct methods
.method public constructor <init>(Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, LgJ;->a:Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, LgJ;->a:Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;

    invoke-static {v0}, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->a(Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;)V

    .line 73
    return-void
.end method
