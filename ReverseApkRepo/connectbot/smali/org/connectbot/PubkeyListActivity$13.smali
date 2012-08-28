.class Lorg/connectbot/PubkeyListActivity$13;
.super Ljava/lang/Object;
.source "PubkeyListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/PubkeyListActivity;->pickFileSimple()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/PubkeyListActivity;

.field private final synthetic val$namesList:[Ljava/lang/String;

.field private final synthetic val$sdcard:Ljava/io/File;


# direct methods
.method constructor <init>(Lorg/connectbot/PubkeyListActivity;[Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/PubkeyListActivity$13;->this$0:Lorg/connectbot/PubkeyListActivity;

    iput-object p2, p0, Lorg/connectbot/PubkeyListActivity$13;->val$namesList:[Ljava/lang/String;

    iput-object p3, p0, Lorg/connectbot/PubkeyListActivity$13;->val$sdcard:Ljava/io/File;

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 609
    iget-object v1, p0, Lorg/connectbot/PubkeyListActivity$13;->val$namesList:[Ljava/lang/String;

    aget-object v0, v1, p2

    .line 611
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lorg/connectbot/PubkeyListActivity$13;->this$0:Lorg/connectbot/PubkeyListActivity;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/connectbot/PubkeyListActivity$13;->val$sdcard:Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #calls: Lorg/connectbot/PubkeyListActivity;->readKeyFromFile(Ljava/io/File;)V
    invoke-static {v1, v2}, Lorg/connectbot/PubkeyListActivity;->access$1(Lorg/connectbot/PubkeyListActivity;Ljava/io/File;)V

    .line 612
    return-void
.end method
