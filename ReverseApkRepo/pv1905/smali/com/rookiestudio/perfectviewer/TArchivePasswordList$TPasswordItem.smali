.class Lcom/rookiestudio/perfectviewer/TArchivePasswordList$TPasswordItem;
.super Ljava/lang/Object;
.source "TArchivePasswordList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TArchivePasswordList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TPasswordItem"
.end annotation


# instance fields
.field public ArchiveName:Ljava/lang/String;

.field public Password:Ljava/lang/String;

.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TArchivePasswordList;


# direct methods
.method private constructor <init>(Lcom/rookiestudio/perfectviewer/TArchivePasswordList;)V
    .locals 0
    .parameter

    .prologue
    .line 6
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TArchivePasswordList$TPasswordItem;->this$0:Lcom/rookiestudio/perfectviewer/TArchivePasswordList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rookiestudio/perfectviewer/TArchivePasswordList;Lcom/rookiestudio/perfectviewer/TArchivePasswordList$TPasswordItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/rookiestudio/perfectviewer/TArchivePasswordList$TPasswordItem;-><init>(Lcom/rookiestudio/perfectviewer/TArchivePasswordList;)V

    return-void
.end method
