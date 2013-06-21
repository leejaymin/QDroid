.class public final LaU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/additional/gui/SendCommandSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/kms/additional/gui/SendCommandSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, LaU;->a:Lcom/kms/additional/gui/SendCommandSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, LaU;->a:Lcom/kms/additional/gui/SendCommandSettingsActivity;

    invoke-virtual {v0}, Lcom/kms/additional/gui/SendCommandSettingsActivity;->finish()V

    .line 80
    return-void
.end method
