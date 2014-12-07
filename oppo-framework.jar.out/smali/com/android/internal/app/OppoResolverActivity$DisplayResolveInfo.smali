.class final Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;
.super Ljava/lang/Object;
.source "OppoResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/OppoResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayResolveInfo"
.end annotation


# instance fields
.field displayIcon:Landroid/graphics/drawable/Drawable;

.field displayLabel:Ljava/lang/CharSequence;

.field extendedInfo:Ljava/lang/CharSequence;

.field origIntent:Landroid/content/Intent;

.field ri:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/android/internal/app/OppoResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/OppoResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "pri"
    .parameter "pLabel"
    .parameter "pInfo"
    .parameter "pOrigIntent"

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    iput-object p2, p0, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    .line 467
    iput-object p3, p0, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 468
    iput-object p4, p0, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    .line 469
    iput-object p5, p0, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    .line 470
    return-void
.end method
