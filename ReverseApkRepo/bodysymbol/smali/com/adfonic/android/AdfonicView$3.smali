.class Lcom/adfonic/android/AdfonicView$3;
.super Ljava/lang/Object;
.source "AdfonicView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adfonic/android/AdfonicView;->createBackground(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adfonic/android/AdfonicView;


# direct methods
.method constructor <init>(Lcom/adfonic/android/AdfonicView;)V
    .locals 0
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/adfonic/android/AdfonicView$3;->this$0:Lcom/adfonic/android/AdfonicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 450
    const/4 v0, 0x0

    return v0
.end method
