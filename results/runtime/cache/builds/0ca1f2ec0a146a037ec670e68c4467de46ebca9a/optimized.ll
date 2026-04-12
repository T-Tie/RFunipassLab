; ModuleID = '<stdin>'
source_filename = "/tmp/tmpeqoia8si.cpp"
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
  %word = alloca [500 x [81 x i8]], align 16
  %text = alloca [500 x [81 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 40500, ptr nonnull %word) #6
  call void @llvm.lifetime.start.p0(i64 40500, ptr nonnull %text) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %if.else34.i, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.else34.i ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %if.else34.i, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %sub = add nsw i32 %0, -1
  %idxprom3 = sext i32 %sub to i64
  br label %for.cond2

if.else34.i:                                      ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x [81 x i8]], ptr %word, i64 0, i64 %indvars.iv
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef 9223372036854775807)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2, %for.cond2.preheader
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.cond2 ], [ 80, %for.cond2.preheader ]
  %arrayidx6 = getelementptr inbounds [500 x [81 x i8]], ptr %word, i64 0, i64 %idxprom3, i64 %indvars.iv47
  %2 = load i8, ptr %arrayidx6, align 1, !tbaa !12
  %cmp7 = icmp eq i8 %2, 0
  %indvars.iv.next48 = add nsw i64 %indvars.iv47, -1
  br i1 %cmp7, label %for.cond2, label %for.cond11, !llvm.loop !13

for.cond11:                                       ; preds = %for.cond2, %for.body19
  %3 = phi i8 [ %.pre, %for.body19 ], [ %2, %for.cond2 ]
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %for.body19 ], [ %indvars.iv47, %for.cond2 ]
  %cmp18 = icmp eq i8 %3, 32
  br i1 %cmp18, label %for.body19, label %for.cond28

for.body19:                                       ; preds = %for.cond11
  %arrayidx16 = getelementptr inbounds [500 x [81 x i8]], ptr %word, i64 0, i64 %idxprom3, i64 %indvars.iv50
  store i8 0, ptr %arrayidx16, align 1, !tbaa !12
  %indvars.iv.next51 = add nsw i64 %indvars.iv50, -1
  %arrayidx16.phi.trans.insert = getelementptr inbounds [500 x [81 x i8]], ptr %word, i64 0, i64 %idxprom3, i64 %indvars.iv.next51
  %.pre = load i8, ptr %arrayidx16.phi.trans.insert, align 1, !tbaa !12
  br label %for.cond11, !llvm.loop !14

for.cond28:                                       ; preds = %for.cond11, %for.inc41
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.inc41 ], [ 0, %for.cond11 ]
  %exitcond59.not = icmp eq i64 %indvars.iv56, 500
  br i1 %exitcond59.not, label %for.cond44, label %for.cond31

for.cond31:                                       ; preds = %for.cond28, %for.body33
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.body33 ], [ 0, %for.cond28 ]
  %exitcond.not = icmp eq i64 %indvars.iv53, 81
  br i1 %exitcond.not, label %for.inc41, label %for.body33

for.body33:                                       ; preds = %for.cond31
  %arrayidx37 = getelementptr inbounds nuw [500 x [81 x i8]], ptr %text, i64 0, i64 %indvars.iv56, i64 %indvars.iv53
  store i8 0, ptr %arrayidx37, align 1, !tbaa !12
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond31, !llvm.loop !15

for.inc41:                                        ; preds = %for.cond31
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  br label %for.cond28, !llvm.loop !16

for.cond44:                                       ; preds = %for.cond28, %for.inc93
  %i.4 = phi i32 [ %inc94, %for.inc93 ], [ 0, %for.cond28 ]
  %j.1 = phi i32 [ %j.2, %for.inc93 ], [ 0, %for.cond28 ]
  %len.0 = phi i32 [ %len.1, %for.inc93 ], [ 0, %for.cond28 ]
  %cmp45 = icmp slt i32 %i.4, %0
  br i1 %cmp45, label %for.body46, label %for.cond96

for.body46:                                       ; preds = %for.cond44
  %idxprom47 = sext i32 %i.4 to i64
  %arrayidx48 = getelementptr inbounds [500 x [81 x i8]], ptr %word, i64 0, i64 %idxprom47
  %call50 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx48) #7
  %conv51 = zext nneg i32 %len.0 to i64
  %add = add i64 %call50, %conv51
  %cmp52 = icmp ult i64 %add, 81
  br i1 %cmp52, label %if.then, label %if.else

if.then:                                          ; preds = %for.body46
  %conv59 = trunc nuw nsw i64 %add to i32
  %idxprom60 = sext i32 %j.1 to i64
  %arrayidx61 = getelementptr inbounds [500 x [81 x i8]], ptr %text, i64 0, i64 %idxprom60
  %call66 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %arrayidx61, ptr noundef nonnull dereferenceable(1) %arrayidx48) #6
  %cmp67.not = icmp eq i64 %add, 80
  br i1 %cmp67.not, label %for.inc93, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %cmp69 = icmp slt i32 %i.4, %sub
  br i1 %cmp69, label %if.then70, label %for.inc93

if.then70:                                        ; preds = %land.lhs.true
  %arrayidx74 = getelementptr inbounds [500 x [81 x i8]], ptr %text, i64 0, i64 %idxprom60, i64 %add
  store i8 32, ptr %arrayidx74, align 1, !tbaa !12
  %add75 = add nuw nsw i32 %conv59, 1
  br label %for.inc93

if.else:                                          ; preds = %for.body46
  %idxprom76 = sext i32 %j.1 to i64
  %sub78 = add nsw i32 %len.0, -1
  %idxprom79 = sext i32 %sub78 to i64
  %arrayidx80 = getelementptr inbounds [500 x [81 x i8]], ptr %text, i64 0, i64 %idxprom76, i64 %idxprom79
  %4 = load i8, ptr %arrayidx80, align 1, !tbaa !12
  %cmp82 = icmp eq i8 %4, 32
  br i1 %cmp82, label %if.then83, label %if.end89

if.then83:                                        ; preds = %if.else
  store i8 0, ptr %arrayidx80, align 1, !tbaa !12
  br label %if.end89

if.end89:                                         ; preds = %if.then83, %if.else
  %inc90 = add nsw i32 %j.1, 1
  %sub91 = add nsw i32 %i.4, -1
  br label %for.inc93

for.inc93:                                        ; preds = %if.end89, %if.then70, %land.lhs.true, %if.then
  %i.5 = phi i32 [ %i.4, %if.then70 ], [ %i.4, %land.lhs.true ], [ %i.4, %if.then ], [ %sub91, %if.end89 ]
  %j.2 = phi i32 [ %j.1, %if.then70 ], [ %j.1, %land.lhs.true ], [ %j.1, %if.then ], [ %inc90, %if.end89 ]
  %len.1 = phi i32 [ %add75, %if.then70 ], [ %conv59, %land.lhs.true ], [ 80, %if.then ], [ 0, %if.end89 ]
  %inc94 = add nsw i32 %i.5, 1
  br label %for.cond44, !llvm.loop !17

for.cond96:                                       ; preds = %for.cond44, %for.body102
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.body102 ], [ 0, %for.cond44 ]
  %arrayidx98 = getelementptr inbounds nuw [500 x [81 x i8]], ptr %text, i64 0, i64 %indvars.iv60
  %5 = load i8, ptr %arrayidx98, align 1, !tbaa !12
  %cmp101.not = icmp eq i8 %5, 0
  br i1 %cmp101.not, label %for.end110, label %for.body102

for.body102:                                      ; preds = %for.cond96
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx98) #6
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx98, i64 noundef %call.i.i)
  %vtable.i38 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !18
  %vbase.offset.ptr.i39 = getelementptr i8, ptr %vtable.i38, i64 -24
  %vbase.offset.i40 = load i64, ptr %vbase.offset.ptr.i39, align 8
  %add.ptr.i41 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i40
  %call.i42 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i41, i8 noundef signext 10)
  %call1.i43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i42)
  %call.i.i44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i43)
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %for.cond96, !llvm.loop !20

for.end110:                                       ; preds = %for.cond96
  call void @llvm.lifetime.end.p0(i64 40500, ptr nonnull %text) #6
  call void @llvm.lifetime.end.p0(i64 40500, ptr nonnull %word) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !8, i64 0}
!20 = distinct !{!20, !10, !11}
