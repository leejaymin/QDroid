.class final Limoblife/cmfilemanager/h;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Limoblife/cmfilemanager/FileManagerActivity;


# direct methods
.method constructor <init>(Limoblife/cmfilemanager/FileManagerActivity;)V
    .locals 0

    iput-object p1, p0, Limoblife/cmfilemanager/h;->a:Limoblife/cmfilemanager/FileManagerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Limoblife/cmfilemanager/h;->a:Limoblife/cmfilemanager/FileManagerActivity;

    invoke-static {v0, p1}, Limoblife/cmfilemanager/FileManagerActivity;->a(Limoblife/cmfilemanager/FileManagerActivity;Landroid/os/Message;)V

    return-void
.end method
