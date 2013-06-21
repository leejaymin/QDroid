.class Lcom/rookiestudio/perfectviewer/TPreferencesManagement$4;
.super Ljava/lang/Object;
.source "TPreferencesManagement.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->AskLoad(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TPreferencesManagement;

.field private final synthetic val$FileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TPreferencesManagement;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$4;->this$0:Lcom/rookiestudio/perfectviewer/TPreferencesManagement;

    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$4;->val$FileName:Ljava/lang/String;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$4;->this$0:Lcom/rookiestudio/perfectviewer/TPreferencesManagement;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$4;->val$FileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->LoadFrom(Ljava/lang/String;)V

    .line 240
    return-void
.end method
