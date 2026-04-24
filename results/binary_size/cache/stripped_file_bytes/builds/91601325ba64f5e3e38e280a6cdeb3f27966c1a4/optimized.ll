; ModuleID = '<stdin>'
source_filename = "/tmp/tmped94kt7y.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [50 x i32], align 16
  %b = alloca [50 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  store i32 0, ptr %n, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %b) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 1, ptr %a, align 16, !tbaa !5
  %scevgep = getelementptr inbounds nuw i8, ptr %a, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %scevgep, i8 0, i64 196, i1 false), !tbaa !5
  %scevgep40 = getelementptr inbounds nuw i8, ptr %b, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %scevgep40, i8 0, i64 196, i1 false), !tbaa !5
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp636 = icmp sgt i32 %0, 0
  br i1 %cmp636, label %for.body7, label %while.cond51.preheader

for.body7:                                        ; preds = %entry, %for.body40.preheader
  %i.137 = phi i32 [ %inc49, %for.body40.preheader ], [ 0, %entry ]
  %1 = load i32, ptr %a, align 16, !tbaa !5
  %mul = shl nsw i32 %1, 1
  %cmp10 = icmp slt i32 %1, 5
  br i1 %cmp10, label %if.end17, label %if.then14

if.then14:                                        ; preds = %for.body7
  %rem = urem i32 %mul, 10
  %div = udiv i32 %mul, 10
  br label %if.end17

if.end17:                                         ; preds = %for.body7, %if.then14
  %rem.sink = phi i32 [ %rem, %if.then14 ], [ %mul, %for.body7 ]
  %yushu.0 = phi i32 [ %div, %if.then14 ], [ 0, %for.body7 ]
  store i32 %rem.sink, ptr %b, align 16, !tbaa !5
  br label %while.body

while.body:                                       ; preds = %if.end17, %if.end36
  %indvars.iv = phi i64 [ 1, %if.end17 ], [ %indvars.iv.next, %if.end36 ]
  %yushu.134 = phi i32 [ %yushu.0, %if.end17 ], [ %yushu.2, %if.end36 ]
  %arrayidx21 = getelementptr inbounds nuw [50 x i32], ptr %a, i64 0, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %mul22 = shl nsw i32 %2, 1
  %add23 = add nsw i32 %mul22, %yushu.134
  %cmp24 = icmp slt i32 %add23, 10
  br i1 %cmp24, label %if.end36, label %if.then30

if.then30:                                        ; preds = %while.body
  %rem31 = urem i32 %add23, 10
  %div34 = udiv i32 %add23, 10
  br label %if.end36

if.end36:                                         ; preds = %while.body, %if.then30
  %rem31.sink = phi i32 [ %rem31, %if.then30 ], [ %add23, %while.body ]
  %yushu.2 = phi i32 [ %div34, %if.then30 ], [ 0, %while.body ]
  %3 = getelementptr inbounds nuw [50 x i32], ptr %b, i64 0, i64 %indvars.iv
  store i32 %rem31.sink, ptr %3, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond.not, label %for.body40.preheader, label %while.body, !llvm.loop !9

for.body40.preheader:                             ; preds = %if.end36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %a, ptr noundef nonnull align 16 dereferenceable(200) %b, i64 200, i1 false), !tbaa !5
  %inc49 = add nuw nsw i32 %i.137, 1
  %exitcond46.not = icmp eq i32 %inc49, %0
  br i1 %exitcond46.not, label %while.cond51.preheader, label %for.body7, !llvm.loop !12

while.cond51.preheader:                           ; preds = %for.body40.preheader, %entry
  br label %while.cond51

while.cond51:                                     ; preds = %while.cond51.preheader, %while.cond51
  %indvars.iv50 = phi i32 [ %indvars.iv.next51, %while.cond51 ], [ 49, %while.cond51.preheader ]
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %while.cond51 ], [ 49, %while.cond51.preheader ]
  %indvars.iv.next48 = add nsw i64 %indvars.iv47, -1
  %arrayidx53 = getelementptr inbounds [50 x i32], ptr %a, i64 0, i64 %indvars.iv47
  %4 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %cmp54 = icmp eq i32 %4, 0
  %indvars.iv.next51 = add i32 %indvars.iv50, -1
  br i1 %cmp54, label %while.cond51, label %for.cond58.preheader, !llvm.loop !13

for.cond58.preheader:                             ; preds = %while.cond51
  %cmp5938 = icmp sgt i64 %indvars.iv47, -1
  br i1 %cmp5938, label %for.body60.preheader, label %for.end66

for.body60.preheader:                             ; preds = %for.cond58.preheader
  %5 = zext i32 %indvars.iv50 to i64
  br label %for.body60

for.body60:                                       ; preds = %for.body60.preheader, %for.body60
  %indvars.iv52 = phi i64 [ %5, %for.body60.preheader ], [ %indvars.iv.next53, %for.body60 ]
  %arrayidx62 = getelementptr inbounds nuw [50 x i32], ptr %a, i64 0, i64 %indvars.iv52
  %6 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %call63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %6)
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, -1
  %cmp59.not = icmp eq i64 %indvars.iv52, 0
  br i1 %cmp59.not, label %for.end66, label %for.body60, !llvm.loop !14

for.end66:                                        ; preds = %for.body60, %for.cond58.preheader
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
