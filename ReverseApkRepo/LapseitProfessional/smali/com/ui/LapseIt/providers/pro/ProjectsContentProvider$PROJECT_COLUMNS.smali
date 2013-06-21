.class public Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider$PROJECT_COLUMNS;
.super Ljava/lang/Object;
.source "ProjectsContentProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PROJECT_COLUMNS"
.end annotation


# static fields
.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final DIRECTORY:Ljava/lang/String; = "directory"

.field public static final FRAMESINFO:Ljava/lang/String; = "framesinfo"

.field public static final RENDEREDINFO:Ljava/lang/String; = "renderedinfo"

.field public static final RESOLUTION:Ljava/lang/String; = "resolution"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TITLE:Ljava/lang/String; = "title"


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;


# direct methods
.method public constructor <init>(Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider$PROJECT_COLUMNS;->this$0:Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
