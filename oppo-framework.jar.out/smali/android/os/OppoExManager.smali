.class public final Landroid/os/OppoExManager;
.super Ljava/lang/Object;
.source "OppoExManager.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final SERVICE_NAME:Ljava/lang/String; = "OPPOExService"

.field public static final TAG:Ljava/lang/String; = "OppoExManager"


# instance fields
.field private mService:Landroid/os/IOppoExService;


# direct methods
.method public constructor <init>(Landroid/os/IOppoExService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/os/OppoExManager;->mService:Landroid/os/IOppoExService;

    .line 39
    return-void
.end method
