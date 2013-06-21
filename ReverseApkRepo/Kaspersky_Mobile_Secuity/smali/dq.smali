.class public final Ldq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/KMSEnterCodeActivity;


# direct methods
.method public constructor <init>(Lcom/kms/gui/KMSEnterCodeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 775
    iput-object p1, p0, Ldq;->a:Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 778
    iget-object v0, p0, Ldq;->a:Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-virtual {v0}, Lcom/kms/gui/KMSEnterCodeActivity;->finish()V

    .line 779
    return-void
.end method
