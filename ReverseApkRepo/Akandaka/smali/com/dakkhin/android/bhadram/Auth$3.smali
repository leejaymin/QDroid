.class Lcom/dakkhin/android/bhadram/Auth$3;
.super Ljava/lang/Object;
.source "Auth.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dakkhin/android/bhadram/Auth;->checkLicense()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dakkhin/android/bhadram/Auth;


# direct methods
.method constructor <init>(Lcom/dakkhin/android/bhadram/Auth;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/dakkhin/android/bhadram/Auth$3;->this$0:Lcom/dakkhin/android/bhadram/Auth;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/Auth$3;->this$0:Lcom/dakkhin/android/bhadram/Auth;

    invoke-virtual {v0}, Lcom/dakkhin/android/bhadram/Auth;->finish()V

    .line 180
    return-void
.end method
