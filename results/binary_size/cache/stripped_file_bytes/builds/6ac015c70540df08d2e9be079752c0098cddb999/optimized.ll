; ModuleID = '<stdin>'
source_filename = "/tmp/tmplofgx5q9.cpp"
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
  %a = alloca [100 x [100 x i32]], align 16
  %b = alloca [100 x [100 x i32]], align 16
  %c = alloca [100 x [100 x i32]], align 16
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull %c) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x1) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y1) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x2) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y2) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.end ], [ 0, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.cond2, label %for.end10

for.cond2:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %1 = load i32, ptr %y1, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp3 = icmp slt i64 %indvars.iv, %2
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv40, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond2
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond

for.end10:                                        ; preds = %for.cond
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  br label %for.cond13

for.cond13:                                       ; preds = %for.end26, %for.end10
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.end26 ], [ 0, %for.end10 ]
  %3 = load i32, ptr %x2, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp14 = icmp slt i64 %indvars.iv46, %4
  br i1 %cmp14, label %for.cond16, label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %for.cond13
  %5 = load i32, ptr %x1, align 4, !tbaa !5
  %6 = load i32, ptr %y2, align 4
  %smax = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %smax58 = call i32 @llvm.smax.i32(i32 %5, i32 0)
  %wide.trip.count59 = zext nneg i32 %smax58 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond30

for.cond16:                                       ; preds = %for.cond13, %for.body18
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.body18 ], [ 0, %for.cond13 ]
  %7 = load i32, ptr %y2, align 4, !tbaa !5
  %8 = sext i32 %7 to i64
  %cmp17 = icmp slt i64 %indvars.iv43, %8
  br i1 %cmp17, label %for.body18, label %for.end26

for.body18:                                       ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv46, i64 %indvars.iv43
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond16, !llvm.loop !12

for.end26:                                        ; preds = %for.cond16
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %for.cond13, !llvm.loop !13

for.cond30:                                       ; preds = %for.cond30.preheader, %for.end56
  %indvars.iv55 = phi i64 [ 0, %for.cond30.preheader ], [ %indvars.iv.next56, %for.end56 ]
  %exitcond60.not = icmp eq i64 %indvars.iv55, %wide.trip.count59
  br i1 %exitcond60.not, label %for.cond60, label %for.cond33

for.cond33:                                       ; preds = %for.cond30, %for.cond36.preheader
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %for.cond36.preheader ], [ 0, %for.cond30 ]
  %exitcond.not = icmp eq i64 %indvars.iv52, %wide.trip.count
  br i1 %exitcond.not, label %for.end56, label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.cond33
  %arrayidx53 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv55, i64 %indvars.iv52
  store i32 0, ptr %arrayidx53, align 4, !tbaa !5
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  br label %for.cond33, !llvm.loop !14

for.end56:                                        ; preds = %for.cond33
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  br label %for.cond30, !llvm.loop !15

for.cond60:                                       ; preds = %for.cond30, %for.end101
  %9 = phi i32 [ %11, %for.end101 ], [ %6, %for.cond30 ]
  %10 = phi i32 [ %.pre, %for.end101 ], [ %5, %for.cond30 ]
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %for.end101 ], [ 0, %for.cond30 ]
  %cmp61 = icmp sgt i32 %10, 0
  br i1 %cmp61, label %for.cond63.preheader, label %for.end104

for.cond63.preheader:                             ; preds = %for.cond60
  %arrayidx78 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv64, i64 0
  %arrayidx72 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv64, i64 0
  br label %for.cond63

for.cond63:                                       ; preds = %for.cond63.preheader, %if.end98
  %11 = phi i32 [ %9, %for.cond63.preheader ], [ %.pre67, %if.end98 ]
  %indvars.iv61 = phi i64 [ 0, %for.cond63.preheader ], [ %indvars.iv.next62, %if.end98 ]
  %12 = sext i32 %11 to i64
  %cmp64 = icmp slt i64 %indvars.iv61, %12
  br i1 %cmp64, label %for.body65, label %for.end101

for.body65:                                       ; preds = %for.cond63
  %cmp66 = icmp eq i64 %indvars.iv61, 0
  br i1 %cmp66, label %if.then, label %if.else80

if.then:                                          ; preds = %for.body65
  %cmp67 = icmp eq i32 %11, 1
  br i1 %cmp67, label %if.then68, label %if.else

if.then68:                                        ; preds = %if.then
  %13 = load i32, ptr %arrayidx72, align 4, !tbaa !5, !invariant.load !16
  %call73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %13)
  %call74 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call73, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end98

if.else:                                          ; preds = %if.then
  %14 = load i32, ptr %arrayidx78, align 4, !tbaa !5, !invariant.load !16
  %call79 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %14)
  br label %if.end98

if.else80:                                        ; preds = %for.body65
  %sub = add nsw i32 %11, -1
  %15 = zext i32 %sub to i64
  %cmp81 = icmp eq i64 %indvars.iv61, %15
  %call83 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  %arrayidx87 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv64, i64 %indvars.iv61
  %16 = load i32, ptr %arrayidx87, align 4, !tbaa !5, !invariant.load !16
  %call88 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call83, i32 noundef %16)
  br i1 %cmp81, label %if.then82, label %if.end98

if.then82:                                        ; preds = %if.else80
  %call89 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call88, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end98

if.end98:                                         ; preds = %if.else80, %if.then82, %if.then68, %if.else
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %.pre67 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond63, !llvm.loop !17

for.end101:                                       ; preds = %for.cond63
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond60

for.end104:                                       ; preds = %for.cond60
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #8
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %c) #8
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %b) #8
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }

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
!15 = distinct !{!15, !10, !11}
!16 = !{}
!17 = distinct !{!17, !10, !11}
