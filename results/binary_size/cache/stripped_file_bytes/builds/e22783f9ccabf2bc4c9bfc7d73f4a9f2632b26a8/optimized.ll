; ModuleID = '<stdin>'
source_filename = "/tmp/tmpcuueydtc.cpp"
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
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %arrayidx96 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond

for.cond:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc147, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.cond1, label %for.end148

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %5, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv68, %2
  br i1 %cmp2, label %for.cond4, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond1
  %3 = add i32 %1, -1
  %4 = zext i32 %3 to i64
  br label %for.cond13

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %5 = phi i32 [ %.pre, %for.body6 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond1 ]
  %6 = sext i32 %5 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %6
  br i1 %cmp5, label %for.body6, label %for.inc10

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv68, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  br label %for.cond1, !llvm.loop !12

for.cond13.loopexit:                              ; preds = %for.cond118
  %add = add nsw i32 %13, %sum.0
  %sub98 = add nsw i32 %j.1, -1
  %indvars.iv.next118 = add nsw i64 %indvars.iv117, -1
  br label %for.cond13, !llvm.loop !13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.cond13.loopexit
  %indvars.iv117 = phi i64 [ %4, %for.cond13.preheader ], [ %indvars.iv.next118, %for.cond13.loopexit ]
  %j.1 = phi i32 [ %1, %for.cond13.preheader ], [ %sub98, %for.cond13.loopexit ]
  %sum.0 = phi i32 [ 0, %for.cond13.preheader ], [ %add, %for.cond13.loopexit ]
  %cmp14 = icmp sgt i32 %j.1, 1
  br i1 %cmp14, label %for.cond16.preheader, label %for.end143

for.cond16.preheader:                             ; preds = %for.cond13
  %wide.trip.count82 = zext nneg i32 %j.1 to i64
  br label %for.cond16

for.cond16:                                       ; preds = %for.cond16.preheader, %for.inc51
  %indvars.iv79 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next80, %for.inc51 ]
  %exitcond83.not = icmp eq i64 %indvars.iv79, %wide.trip.count82
  br i1 %exitcond83.not, label %for.cond54, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %arrayidx20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv79
  %7 = load i32, ptr %arrayidx20, align 16, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.body24, %for.body18
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.body24 ], [ 0, %for.body18 ]
  %min.0 = phi i32 [ %spec.select, %for.body24 ], [ %7, %for.body18 ]
  %exitcond.not = icmp eq i64 %indvars.iv71, %wide.trip.count82
  br i1 %exitcond.not, label %for.cond37, label %for.body24

for.body24:                                       ; preds = %for.cond22
  %arrayidx28 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv79, i64 %indvars.iv71
  %8 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %min.0, i32 %8)
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  br label %for.cond22, !llvm.loop !14

for.cond37:                                       ; preds = %for.cond22, %for.body39
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %for.body39 ], [ 0, %for.cond22 ]
  %exitcond78.not = icmp eq i64 %indvars.iv74, %wide.trip.count82
  br i1 %exitcond78.not, label %for.inc51, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %arrayidx43 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv79, i64 %indvars.iv74
  %9 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %sub = sub nsw i32 %9, %min.0
  store i32 %sub, ptr %arrayidx43, align 4, !tbaa !5
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %for.cond37, !llvm.loop !15

for.inc51:                                        ; preds = %for.cond37
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  br label %for.cond16, !llvm.loop !16

for.cond54:                                       ; preds = %for.cond16, %for.inc92
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %for.inc92 ], [ 0, %for.cond16 ]
  %exitcond98.not = icmp eq i64 %indvars.iv94, %wide.trip.count82
  br i1 %exitcond98.not, label %for.end94, label %for.body56

for.body56:                                       ; preds = %for.cond54
  %arrayidx59 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv94
  %10 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  br label %for.cond60

for.cond60:                                       ; preds = %for.body62, %for.body56
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %for.body62 ], [ 0, %for.body56 ]
  %min.2 = phi i32 [ %spec.select66, %for.body62 ], [ %10, %for.body56 ]
  %exitcond88.not = icmp eq i64 %indvars.iv84, %wide.trip.count82
  br i1 %exitcond88.not, label %for.cond77, label %for.body62

for.body62:                                       ; preds = %for.cond60
  %arrayidx66 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv84, i64 %indvars.iv94
  %11 = load i32, ptr %arrayidx66, align 4, !tbaa !5
  %spec.select66 = call i32 @llvm.smin.i32(i32 %min.2, i32 %11)
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  br label %for.cond60, !llvm.loop !17

for.cond77:                                       ; preds = %for.cond60, %for.body79
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %for.body79 ], [ 0, %for.cond60 ]
  %exitcond93.not = icmp eq i64 %indvars.iv89, %wide.trip.count82
  br i1 %exitcond93.not, label %for.inc92, label %for.body79

for.body79:                                       ; preds = %for.cond77
  %arrayidx83 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv89, i64 %indvars.iv94
  %12 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  %sub84 = sub nsw i32 %12, %min.2
  store i32 %sub84, ptr %arrayidx83, align 4, !tbaa !5
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  br label %for.cond77, !llvm.loop !18

for.inc92:                                        ; preds = %for.cond77
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %for.cond54, !llvm.loop !19

for.end94:                                        ; preds = %for.cond54
  %13 = load i32, ptr %arrayidx96, align 4, !tbaa !5
  br label %for.cond97

for.cond97:                                       ; preds = %for.body100, %for.end94
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.body100 ], [ 1, %for.end94 ]
  %exitcond106.not = icmp eq i64 %indvars.iv99, %indvars.iv117
  br i1 %exitcond106.not, label %for.cond118, label %for.body100

for.body100:                                      ; preds = %for.cond97
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  %arrayidx103 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next100
  %14 = load i32, ptr %arrayidx103, align 16, !tbaa !5
  %arrayidx106 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv99
  store i32 %14, ptr %arrayidx106, align 16, !tbaa !5
  %arrayidx111 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv.next100
  %15 = load i32, ptr %arrayidx111, align 4, !tbaa !5
  %arrayidx114 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv99
  store i32 %15, ptr %arrayidx114, align 4, !tbaa !5
  br label %for.cond97, !llvm.loop !20

for.cond118:                                      ; preds = %for.cond122, %for.cond97
  %indvars.iv112 = phi i64 [ 1, %for.cond97 ], [ %indvars.iv.next113, %for.cond122 ]
  %exitcond116.not = icmp eq i64 %indvars.iv112, %indvars.iv117
  br i1 %exitcond116.not, label %for.cond13.loopexit, label %for.cond122.preheader

for.cond122.preheader:                            ; preds = %for.cond118
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  br label %for.cond122

for.cond122:                                      ; preds = %for.cond122.preheader, %for.body125
  %indvars.iv107 = phi i64 [ 1, %for.cond122.preheader ], [ %indvars.iv.next108, %for.body125 ]
  %exitcond111.not = icmp eq i64 %indvars.iv107, %indvars.iv117
  br i1 %exitcond111.not, label %for.cond118, label %for.body125, !llvm.loop !21

for.body125:                                      ; preds = %for.cond122
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  %arrayidx131 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next113, i64 %indvars.iv.next108
  %16 = load i32, ptr %arrayidx131, align 4, !tbaa !5
  %arrayidx135 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv112, i64 %indvars.iv107
  store i32 %16, ptr %arrayidx135, align 4, !tbaa !5
  br label %for.cond122, !llvm.loop !22

for.end143:                                       ; preds = %for.cond13
  %call144 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 10, ptr %__c.addr.i, align 1, !tbaa !23
  %vtable.i = load ptr, ptr %call144, align 8, !tbaa !24
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call144, i64 %vbase.offset.i
  %_M_width.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 16
  %17 = load i64, ptr %_M_width.i.i, align 8, !tbaa !26
  %cmp.not.i = icmp eq i64 %17, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.end143
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call144, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.end143
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call144, i8 noundef signext 10)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %inc147 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !37

for.end148:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = !{!7, !7, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !8, i64 0}
!26 = !{!27, !28, i64 16}
!27 = !{!"_ZTSSt8ios_base", !28, i64 8, !28, i64 16, !29, i64 24, !30, i64 28, !30, i64 32, !31, i64 40, !33, i64 48, !7, i64 64, !6, i64 192, !34, i64 200, !35, i64 208}
!28 = !{!"long", !7, i64 0}
!29 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!30 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!31 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !32, i64 0}
!32 = !{!"any pointer", !7, i64 0}
!33 = !{!"_ZTSNSt8ios_base6_WordsE", !32, i64 0, !28, i64 8}
!34 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !32, i64 0}
!35 = !{!"_ZTSSt6locale", !36, i64 0}
!36 = !{!"p1 _ZTSNSt6locale5_ImplE", !32, i64 0}
!37 = distinct !{!37, !10, !11}
