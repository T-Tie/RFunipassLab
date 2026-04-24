; ModuleID = '<stdin>'
source_filename = "/tmp/tmputab8_y_.cpp"
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
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %word = alloca [600 x i8], align 16
  %gram = alloca [600 x [10 x i8]], align 16
  %temp = alloca [600 x [10 x i8]], align 16
  %cnt = alloca [600 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 600, ptr noundef nonnull align 16 %word) #9
  call void @llvm.lifetime.start.p0(i64 noundef 6000, ptr noundef nonnull align 16 %gram) #9
  call void @llvm.lifetime.start.p0(i64 noundef 6000, ptr noundef nonnull %temp) #9
  call void @llvm.lifetime.start.p0(i64 noundef 2400, ptr noundef nonnull align 16 %cnt) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %word, i64 noundef 600)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %word) #10
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 600
  br i1 %exitcond.not, label %for.cond5.preheader, label %for.body

for.cond5.preheader:                              ; preds = %for.cond
  %conv = trunc i64 %call4 to i32
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = add i32 %conv, 1
  %add = sub i32 %sub, %0
  %invariant.op = add i32 %0, -1
  %1 = sext i32 %invariant.op to i64
  %smax = call i32 @llvm.smax.i32(i32 %add, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond5

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [600 x i32], ptr %cnt, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond5:                                        ; preds = %for.cond5.preheader, %for.end22
  %indvars.iv28 = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next29, %for.end22 ]
  %exitcond37.not = icmp eq i64 %indvars.iv28, %wide.trip.count
  br i1 %exitcond37.not, label %for.cond30, label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.cond5
  %2 = add nsw i64 %indvars.iv28, %1
  br label %for.cond8

for.cond8:                                        ; preds = %for.cond8.preheader, %for.body12
  %indvars.iv30 = phi i64 [ %indvars.iv28, %for.cond8.preheader ], [ %indvars.iv.next31, %for.body12 ]
  %indvars.iv26 = phi i64 [ 0, %for.cond8.preheader ], [ %indvars.iv.next27, %for.body12 ]
  %cmp11.not = icmp sgt i64 %indvars.iv30, %2
  br i1 %cmp11.not, label %for.end22, label %for.body12

for.body12:                                       ; preds = %for.cond8
  %arrayidx14 = getelementptr inbounds nuw [600 x i8], ptr %word, i64 0, i64 %indvars.iv30
  %3 = load i8, ptr %arrayidx14, align 1, !tbaa !12, !invariant.load !13
  %arrayidx18 = getelementptr inbounds nuw [600 x [10 x i8]], ptr %gram, i64 0, i64 %indvars.iv28, i64 %indvars.iv26
  store i8 %3, ptr %arrayidx18, align 1, !tbaa !12
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond8, !llvm.loop !14

for.end22:                                        ; preds = %for.cond8
  %arrayidx26 = getelementptr inbounds nuw [600 x [10 x i8]], ptr %gram, i64 0, i64 %indvars.iv28, i64 %indvars.iv26
  store i8 0, ptr %arrayidx26, align 1, !tbaa !12
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond5, !llvm.loop !15

for.cond30:                                       ; preds = %for.cond5, %for.body34
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.body34 ], [ 0, %for.cond5 ]
  %exitcond42.not = icmp eq i64 %indvars.iv38, %wide.trip.count
  br i1 %exitcond42.not, label %for.cond45.preheader, label %for.body34

for.cond45.preheader:                             ; preds = %for.cond30
  %wide.trip.count46 = zext i32 %add to i64
  br label %for.cond45

for.body34:                                       ; preds = %for.cond30
  %arrayidx36 = getelementptr inbounds nuw [600 x [10 x i8]], ptr %temp, i64 0, i64 %indvars.iv38
  %arrayidx39 = getelementptr inbounds nuw [600 x [10 x i8]], ptr %gram, i64 0, i64 %indvars.iv38
  %call41 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %arrayidx36, ptr noundef nonnull readonly captures(none) dereferenceable(1) %arrayidx39) #11
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond30, !llvm.loop !16

for.cond45:                                       ; preds = %for.cond45.preheader, %for.end68
  %indvars.iv48 = phi i64 [ 0, %for.cond45.preheader ], [ %indvars.iv.next49, %for.end68 ]
  %exitcond52.not = icmp eq i64 %indvars.iv48, %wide.trip.count
  br i1 %exitcond52.not, label %for.cond72, label %for.cond50.preheader

for.cond50.preheader:                             ; preds = %for.cond45
  %arrayidx56 = getelementptr inbounds nuw [600 x [10 x i8]], ptr %gram, i64 0, i64 %indvars.iv48
  %arrayidx64 = getelementptr inbounds nuw [600 x i32], ptr %cnt, i64 0, i64 %indvars.iv48
  br label %for.cond50

for.cond50:                                       ; preds = %for.cond50.preheader, %if.end
  %indvars.iv43 = phi i64 [ 0, %for.cond50.preheader ], [ %indvars.iv.next44, %if.end ]
  %exitcond47.not = icmp eq i64 %indvars.iv43, %wide.trip.count46
  br i1 %exitcond47.not, label %for.end68, label %for.body54

for.body54:                                       ; preds = %for.cond50
  %arrayidx59 = getelementptr inbounds nuw [600 x [10 x i8]], ptr %temp, i64 0, i64 %indvars.iv43
  %call61 = call i32 @strcmp(ptr noundef nonnull readonly captures(none) dereferenceable(1) %arrayidx56, ptr noundef nonnull dereferenceable(1) %arrayidx59) #10
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %if.then, label %if.end

if.then:                                          ; preds = %for.body54
  %4 = load i32, ptr %arrayidx64, align 4, !tbaa !5, !invariant.load !13
  %inc65 = add nsw i32 %4, 1
  store i32 %inc65, ptr %arrayidx64, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body54
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond50, !llvm.loop !17

for.end68:                                        ; preds = %for.cond50
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond45, !llvm.loop !18

for.cond72:                                       ; preds = %for.cond45, %for.body76
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.body76 ], [ 0, %for.cond45 ]
  %max.0 = phi i32 [ %spec.select, %for.body76 ], [ 1, %for.cond45 ]
  %exitcond57.not = icmp eq i64 %indvars.iv53, %wide.trip.count
  br i1 %exitcond57.not, label %for.end86, label %for.body76

for.body76:                                       ; preds = %for.cond72
  %arrayidx78 = getelementptr inbounds nuw [600 x i32], ptr %cnt, i64 0, i64 %indvars.iv53
  %5 = load i32, ptr %arrayidx78, align 4, !tbaa !5, !invariant.load !13
  %spec.select = call i32 @llvm.smax.i32(i32 %5, i32 %max.0)
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond72, !llvm.loop !19

for.end86:                                        ; preds = %for.cond72
  %cmp87 = icmp sgt i32 %max.0, 1
  br i1 %cmp87, label %if.then88, label %if.else

if.then88:                                        ; preds = %for.end86
  %call89 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max.0)
  %call90 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call89, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.cond91

for.cond91:                                       ; preds = %if.end138, %if.then88
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %if.end138 ], [ 0, %if.then88 ]
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %add93 = sub i32 %sub, %6
  %7 = sext i32 %add93 to i64
  %cmp94 = icmp slt i64 %indvars.iv63, %7
  br i1 %cmp94, label %for.body95, label %if.end144

for.body95:                                       ; preds = %for.cond91
  %arrayidx97 = getelementptr inbounds nuw [600 x i32], ptr %cnt, i64 0, i64 %indvars.iv63
  %8 = load i32, ptr %arrayidx97, align 4, !tbaa !5
  %cmp98 = icmp eq i32 %8, %max.0
  br i1 %cmp98, label %land.lhs.true, label %if.end138

land.lhs.true:                                    ; preds = %for.body95
  %cmp99 = icmp eq i64 %indvars.iv63, 0
  br i1 %cmp99, label %land.lhs.true110.thread, label %for.cond113.preheader

for.cond113.preheader:                            ; preds = %land.lhs.true
  %arrayidx117 = getelementptr inbounds nuw [600 x [10 x i8]], ptr %gram, i64 0, i64 %indvars.iv63
  %9 = add nuw i64 %indvars.iv63, 4294967295
  %10 = and i64 %9, 4294967295
  br label %for.cond113

land.lhs.true110.thread:                          ; preds = %land.lhs.true
  call fastcc void @outlined_ir_func_0(ptr nonnull %gram)
  br label %if.end138

for.cond113:                                      ; preds = %for.cond113.preheader, %if.end134
  %indvars.iv58 = phi i64 [ 0, %for.cond113.preheader ], [ %indvars.iv.next59, %if.end134 ]
  %exitcond62.not = icmp eq i64 %indvars.iv58, %indvars.iv63
  br i1 %exitcond62.not, label %if.end138, label %for.body115

for.body115:                                      ; preds = %for.cond113
  %arrayidx120 = getelementptr inbounds nuw [600 x [10 x i8]], ptr %gram, i64 0, i64 %indvars.iv58
  %call122 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %arrayidx117, ptr noundef nonnull dereferenceable(1) %arrayidx120) #10
  %cmp123 = icmp eq i32 %call122, 0
  br i1 %cmp123, label %if.end138, label %if.end125

if.end125:                                        ; preds = %for.body115
  %cmp127 = icmp eq i64 %indvars.iv58, %10
  br i1 %cmp127, label %if.then128, label %if.end134

if.then128:                                       ; preds = %if.end125
  call fastcc void @outlined_ir_func_0(ptr noundef nonnull %arrayidx117)
  br label %if.end134

if.end134:                                        ; preds = %if.then128, %if.end125
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond113, !llvm.loop !20

if.end138:                                        ; preds = %for.body115, %for.cond113, %land.lhs.true110.thread, %for.body95
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  br label %for.cond91, !llvm.loop !21

if.else:                                          ; preds = %for.end86
  call fastcc void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(3) @.str)
  br label %if.end144

if.end144:                                        ; preds = %for.cond91, %if.else
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #11
  call void @llvm.lifetime.end.p0(i64 noundef 2400, ptr noundef nonnull %cnt) #11
  call void @llvm.lifetime.end.p0(i64 noundef 6000, ptr noundef nonnull %temp) #11
  call void @llvm.lifetime.end.p0(i64 noundef 6000, ptr noundef nonnull %gram) #11
  call void @llvm.lifetime.end.p0(i64 noundef 600, ptr noundef nonnull %word) #11
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #6

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr nonnull %0) unnamed_addr #7 {
if.end106.exitStub:
  %call104 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %0)
  %call105 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call104, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind }

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
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
