.class public Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider$RENDERED_COLUMNS;
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
    name = "RENDERED_COLUMNS"
.end annotation


# static fields
.field public static final FILENAME:Ljava/lang/String; = "filename"

.field public static final FILEPATH:Ljava/lang/String; = "filepath"

.field public static final FRAMERATE:Ljava/lang/String; = "framerate"

.field public static final QUALITY:Ljava/lang/String; = "quality"

.field public static final THUMB:Ljava/lang/String; = "thumb"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;


# direct methods
.method public constructor <init>(Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider$RENDERED_COLUMNS;->this$0:Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
