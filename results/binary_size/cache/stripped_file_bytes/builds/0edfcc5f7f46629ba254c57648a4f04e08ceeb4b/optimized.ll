; ModuleID = '<stdin>'
source_filename = "/tmp/tmpw8ovaago.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [101 x [101 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z4xiaoi(i32 noundef %n) local_unnamed_addr #0 {
entry:
  %0 = zext i32 %n to i64
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end206, %entry
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %for.end206 ], [ %0, %entry ]
  %accumulator.tr = phi i32 [ %add, %for.end206 ], [ 0, %entry ]
  %cmp = icmp eq i64 %indvars.iv127, 2
  br i1 %cmp, label %for.cond.preheader, label %if.end81

for.cond.preheader:                               ; preds = %tailrecurse
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc34
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %for.inc34 ], [ 0, %for.cond.preheader ]
  %exitcond118.not = icmp eq i64 %indvars.iv115, 2
  br i1 %exitcond118.not, label %for.cond37, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv115
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond22

for.cond22:                                       ; preds = %for.body, %for.inc31
  %indvars.iv111 = phi i64 [ 0, %for.body ], [ %indvars.iv.next112, %for.inc31 ]
  %exitcond114.not = icmp eq i64 %indvars.iv111, 2
  br i1 %exitcond114.not, label %for.inc34, label %for.inc31

for.inc31:                                        ; preds = %for.cond22
  %arrayidx30 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv115, i64 %indvars.iv111
  %2 = load i32, ptr %arrayidx30, align 4, !tbaa !5, !invariant.load !9
  %sub = sub nsw i32 %2, %1
  store i32 %sub, ptr %arrayidx30, align 4, !tbaa !5
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  br label %for.cond22, !llvm.loop !10

for.inc34:                                        ; preds = %for.cond22
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  br label %for.cond, !llvm.loop !13

for.cond37:                                       ; preds = %for.cond, %for.inc78
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %for.inc78 ], [ 0, %for.cond ]
  %exitcond126.not = icmp eq i64 %indvars.iv123, 2
  br i1 %exitcond126.not, label %for.end80, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %arrayidx41 = getelementptr inbounds nuw [101 x i32], ptr @a, i64 0, i64 %indvars.iv123
  %3 = load i32, ptr %arrayidx41, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond65

for.cond65:                                       ; preds = %for.body39, %for.inc75
  %indvars.iv119 = phi i64 [ 0, %for.body39 ], [ %indvars.iv.next120, %for.inc75 ]
  %exitcond122.not = icmp eq i64 %indvars.iv119, 2
  br i1 %exitcond122.not, label %for.inc78, label %for.inc75

for.inc75:                                        ; preds = %for.cond65
  %arrayidx73 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv119, i64 %indvars.iv123
  %4 = load i32, ptr %arrayidx73, align 4, !tbaa !5, !invariant.load !9
  %sub74 = sub nsw i32 %4, %3
  store i32 %sub74, ptr %arrayidx73, align 4, !tbaa !5
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  br label %for.cond65, !llvm.loop !14

for.inc78:                                        ; preds = %for.cond65
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1
  br label %for.cond37, !llvm.loop !15

for.end80:                                        ; preds = %for.cond37
  %5 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 408), align 8, !tbaa !5
  %accumulator.ret.tr = add nsw i32 %5, %accumulator.tr
  ret i32 %accumulator.ret.tr

if.end81:                                         ; preds = %tailrecurse
  %6 = trunc nuw i64 %indvars.iv127 to i32
  %cmp82 = icmp sgt i32 %6, 1
  tail call void @llvm.assume(i1 noundef %cmp82)
  br label %for.cond84

for.cond84:                                       ; preds = %if.end81, %for.inc126
  %indvars.iv84 = phi i64 [ 0, %if.end81 ], [ %indvars.iv.next85, %for.inc126 ]
  %exitcond88.not = icmp eq i64 %indvars.iv84, %indvars.iv127
  br i1 %exitcond88.not, label %for.cond129, label %for.body86

for.body86:                                       ; preds = %for.cond84
  %arrayidx88 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv84
  %7 = load i32, ptr %arrayidx88, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond113

for.cond113:                                      ; preds = %for.body86, %for.inc123
  %indvars.iv = phi i64 [ 0, %for.body86 ], [ %indvars.iv.next, %for.inc123 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %indvars.iv127
  br i1 %exitcond.not, label %for.inc126, label %for.inc123

for.inc123:                                       ; preds = %for.cond113
  %arrayidx121 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv84, i64 %indvars.iv
  %8 = load i32, ptr %arrayidx121, align 4, !tbaa !5, !invariant.load !9
  %sub122 = sub nsw i32 %8, %7
  store i32 %sub122, ptr %arrayidx121, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond113, !llvm.loop !16

for.inc126:                                       ; preds = %for.cond113
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  br label %for.cond84, !llvm.loop !17

for.cond129:                                      ; preds = %for.cond84, %for.inc170
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %for.inc170 ], [ 0, %for.cond84 ]
  %exitcond98.not = icmp eq i64 %indvars.iv94, %indvars.iv127
  br i1 %exitcond98.not, label %for.end172, label %for.body131

for.body131:                                      ; preds = %for.cond129
  %arrayidx133 = getelementptr inbounds nuw [101 x i32], ptr @a, i64 0, i64 %indvars.iv94
  %9 = load i32, ptr %arrayidx133, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond157

for.cond157:                                      ; preds = %for.body131, %for.inc167
  %indvars.iv89 = phi i64 [ 0, %for.body131 ], [ %indvars.iv.next90, %for.inc167 ]
  %exitcond93.not = icmp eq i64 %indvars.iv89, %indvars.iv127
  br i1 %exitcond93.not, label %for.inc170, label %for.inc167

for.inc167:                                       ; preds = %for.cond157
  %arrayidx165 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv89, i64 %indvars.iv94
  %10 = load i32, ptr %arrayidx165, align 4, !tbaa !5, !invariant.load !9
  %sub166 = sub nsw i32 %10, %9
  store i32 %sub166, ptr %arrayidx165, align 4, !tbaa !5
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  br label %for.cond157, !llvm.loop !18

for.inc170:                                       ; preds = %for.cond157
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %for.cond129, !llvm.loop !19

for.end172:                                       ; preds = %for.cond129
  %11 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 408), align 8, !tbaa !5
  br label %for.cond173

for.cond173:                                      ; preds = %for.inc204, %for.end172
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %for.inc204 ], [ 2, %for.end172 ]
  %exitcond110.not = icmp eq i64 %indvars.iv105, %indvars.iv127
  br i1 %exitcond110.not, label %for.end206, label %for.body175

for.body175:                                      ; preds = %for.cond173
  %arrayidx177 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv105
  %12 = load i32, ptr %arrayidx177, align 4, !tbaa !5, !invariant.load !9
  %13 = add nsw i64 %indvars.iv105, -1
  %arrayidx181 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %13
  store i32 %12, ptr %arrayidx181, align 4, !tbaa !5
  %arrayidx184 = getelementptr inbounds nuw [101 x i32], ptr @a, i64 0, i64 %indvars.iv105
  %14 = load i32, ptr %arrayidx184, align 4, !tbaa !5, !invariant.load !9
  %arrayidx187 = getelementptr inbounds [101 x i32], ptr @a, i64 0, i64 %13
  store i32 %14, ptr %arrayidx187, align 4, !tbaa !5
  br label %for.cond188

for.cond188:                                      ; preds = %for.inc201, %for.body175
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.inc201 ], [ 2, %for.body175 ]
  %exitcond104.not = icmp eq i64 %indvars.iv99, %indvars.iv127
  br i1 %exitcond104.not, label %for.inc204, label %for.inc201

for.inc201:                                       ; preds = %for.cond188
  %arrayidx194 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv105, i64 %indvars.iv99
  %15 = load i32, ptr %arrayidx194, align 4, !tbaa !5, !invariant.load !9
  %16 = add nsw i64 %indvars.iv99, -1
  %arrayidx200 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %13, i64 %16
  store i32 %15, ptr %arrayidx200, align 4, !tbaa !5
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  br label %for.cond188, !llvm.loop !20

for.inc204:                                       ; preds = %for.cond188
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  br label %for.cond173, !llvm.loop !21

for.end206:                                       ; preds = %for.cond173
  %indvars.iv.next128 = add nsw i64 %indvars.iv127, -1
  %add = add nsw i32 %11, %accumulator.tr
  br label %tailrecurse
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %ans = alloca [101 x i32], align 16
  %f = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 404, ptr noundef nonnull %ans) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.inc16 ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv17, %1
  br i1 %cmp.not, label %for.cond19, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %2 = phi i32 [ %4, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %for.inc10 ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv14, %3
  br i1 %cmp2, label %for.cond4, label %for.inc16

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %4 = phi i32 [ %.pre, %for.inc ], [ %2, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %5 = sext i32 %4 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %5
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv14, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !22

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond1, !llvm.loop !23

for.inc16:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z4xiaoi(i32 noundef %2) #8
  %arrayidx15 = getelementptr inbounds nuw [101 x i32], ptr %ans, i64 0, i64 %indvars.iv17
  store i32 %call13, ptr %arrayidx15, align 4, !tbaa !5
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond, !llvm.loop !24

for.cond19:                                       ; preds = %for.cond, %for.inc26
  %6 = phi i32 [ %.pre23, %for.inc26 ], [ %0, %for.cond ]
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.inc26 ], [ 1, %for.cond ]
  %7 = sext i32 %6 to i64
  %cmp20.not = icmp sgt i64 %indvars.iv20, %7
  br i1 %cmp20.not, label %for.end28, label %for.inc26

for.inc26:                                        ; preds = %for.cond19
  %arrayidx23 = getelementptr inbounds nuw [101 x i32], ptr %ans, i64 0, i64 %indvars.iv20
  %8 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !9
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %8)
  %call25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call24, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %.pre23 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !25

for.end28:                                        ; preds = %for.cond19
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %f) #8
  %call29 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %f)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %f) #8
  call void @llvm.lifetime.end.p0(i64 noundef 404, ptr noundef nonnull %ans) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nofree nounwind willreturn }
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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12}
!21 = distinct !{!21, !11, !12}
!22 = distinct !{!22, !11, !12}
!23 = distinct !{!23, !11, !12}
!24 = distinct !{!24, !11, !12}
!25 = distinct !{!25, !11, !12}
