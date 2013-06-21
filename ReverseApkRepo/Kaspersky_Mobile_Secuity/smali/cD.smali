.class public final LcD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/kms/antivirus/gui/AvAdditionalActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 209
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 210
    return-void
.end method
