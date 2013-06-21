.class final Lccc71/bmw/lib/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/x;

.field private final synthetic b:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/x;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/z;->a:Lccc71/bmw/lib/x;

    iput-object p2, p0, Lccc71/bmw/lib/z;->b:Landroid/widget/EditText;

    .line 943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lccc71/bmw/lib/z;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 948
    return-void
.end method
