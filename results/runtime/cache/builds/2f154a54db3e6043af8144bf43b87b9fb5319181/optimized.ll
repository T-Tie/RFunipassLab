; ModuleID = '<stdin>'
source_filename = "/tmp/tmpd7qcwv6o.cpp"
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
  %len = alloca i32, align 4
  %num = alloca [10000 x i32], align 16
  %c = alloca [10000 x [6 x i8]], align 16
  %input = alloca [600 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %len) #8
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %num) #8
  call void @llvm.lifetime.start.p0(i64 noundef 60000, ptr noundef nonnull align 16 dereferenceable(60000) %c) #8
  call void @llvm.lifetime.start.p0(i64 noundef 600, ptr noundef nonnull align 16 %input) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %len)
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %input, i64 noundef 600)
  %0 = load i32, ptr %len, align 4, !tbaa !5
  %conv5 = sext i32 %0 to i64
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.inc18 ], [ 0, %entry ]
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %input) #9
  %sub = sub i64 %call4, %conv5
  %cmp.not = icmp ult i64 %sub, %indvars.iv39
  br i1 %cmp.not, label %for.cond21.preheader, label %for.cond6

for.cond21.preheader:                             ; preds = %for.cond
  %wide.trip.count49 = and i64 %indvars.iv39, 4294967295
  br label %for.cond21

for.cond6:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc18, label %for.inc

for.inc:                                          ; preds = %for.cond6
  %1 = add nuw nsw i64 %indvars.iv, %indvars.iv39
  %arrayidx = getelementptr inbounds nuw [600 x i8], ptr %input, i64 0, i64 %1
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %arrayidx12 = getelementptr inbounds nuw [10000 x [6 x i8]], ptr %c, i64 0, i64 %indvars.iv39, i64 %indvars.iv
  store i8 %2, ptr %arrayidx12, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond6, !llvm.loop !10

for.inc18:                                        ; preds = %for.cond6
  %arrayidx16 = getelementptr inbounds [10000 x [6 x i8]], ptr %c, i64 0, i64 %indvars.iv39, i64 %conv5
  store i8 0, ptr %arrayidx16, align 1, !tbaa !9
  %indvars.iv.next40 = add nuw i64 %indvars.iv39, 1
  br label %for.cond, !llvm.loop !13

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc26
  %indvars.iv44 = phi i64 [ 0, %for.cond21.preheader ], [ %indvars.iv.next45, %for.inc26 ]
  %exitcond50.not = icmp eq i64 %indvars.iv44, %wide.trip.count49
  br i1 %exitcond50.not, label %for.cond29, label %for.inc26

for.inc26:                                        ; preds = %for.cond21
  %arrayidx25 = getelementptr inbounds nuw [10000 x i32], ptr %num, i64 0, i64 %indvars.iv44
  store i32 1, ptr %arrayidx25, align 4, !tbaa !5
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond21, !llvm.loop !14

for.cond29:                                       ; preds = %for.cond21, %for.inc54
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %for.inc54 ], [ 0, %for.cond21 ]
  %exitcond62.not = icmp eq i64 %indvars.iv51, %wide.trip.count49
  br i1 %exitcond62.not, label %for.cond57, label %for.cond32.preheader

for.cond32.preheader:                             ; preds = %for.cond29
  %arrayidx36 = getelementptr inbounds nuw [10000 x [6 x i8]], ptr %c, i64 0, i64 %indvars.iv51
  %arrayidx44 = getelementptr inbounds nuw [10000 x i32], ptr %num, i64 0, i64 %indvars.iv51
  br label %for.cond32

for.cond32:                                       ; preds = %for.cond32.preheader, %for.inc51
  %indvars.iv53 = phi i64 [ %indvars.iv51, %for.cond32.preheader ], [ %indvars.iv.next54, %for.inc51 ]
  %exitcond58.not = icmp eq i64 %indvars.iv53, %wide.trip.count49
  br i1 %exitcond58.not, label %for.inc54, label %for.body34

for.body34:                                       ; preds = %for.cond32
  %arrayidx39 = getelementptr inbounds nuw [10000 x [6 x i8]], ptr %c, i64 0, i64 %indvars.iv53
  %call41 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %arrayidx36, ptr noundef nonnull dereferenceable(1) %arrayidx39) #9
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %land.lhs.true, label %for.inc51

land.lhs.true:                                    ; preds = %for.body34
  %3 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %cmp45 = icmp sgt i32 %3, 0
  br i1 %cmp45, label %if.then, label %for.inc51

if.then:                                          ; preds = %land.lhs.true
  %inc48 = add nuw nsw i32 %3, 1
  store i32 %inc48, ptr %arrayidx44, align 4, !tbaa !5
  %arrayidx50 = getelementptr inbounds nuw [10000 x i32], ptr %num, i64 0, i64 %indvars.iv53
  %4 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %arrayidx50, align 4, !tbaa !5
  br label %for.inc51

for.inc51:                                        ; preds = %for.body34, %land.lhs.true, %if.then
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond32, !llvm.loop !15

for.inc54:                                        ; preds = %for.cond32
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  br label %for.cond29, !llvm.loop !16

for.cond57:                                       ; preds = %for.cond29, %for.body59
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %for.body59 ], [ 0, %for.cond29 ]
  %max.0 = phi i32 [ %spec.select, %for.body59 ], [ 0, %for.cond29 ]
  %exitcond68.not = icmp eq i64 %indvars.iv63, %wide.trip.count49
  br i1 %exitcond68.not, label %for.end69, label %for.body59

for.body59:                                       ; preds = %for.cond57
  %arrayidx61 = getelementptr inbounds nuw [10000 x i32], ptr %num, i64 0, i64 %indvars.iv63
  %5 = load i32, ptr %arrayidx61, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %5, i32 %max.0)
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  br label %for.cond57, !llvm.loop !17

for.end69:                                        ; preds = %for.cond57
  %cmp70 = icmp eq i32 %max.0, 1
  br i1 %cmp70, label %if.then71, label %if.else

if.then71:                                        ; preds = %for.end69
  call fastcc void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(3) @.str)
  br label %if.end92

if.else:                                          ; preds = %for.end69
  %call74 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max.0)
  %call75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call74, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc89, %if.else
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.inc89 ], [ 0, %if.else ]
  %exitcond74.not = icmp eq i64 %indvars.iv69, %wide.trip.count49
  br i1 %exitcond74.not, label %if.end92, label %for.body78

for.body78:                                       ; preds = %for.cond76
  %arrayidx80 = getelementptr inbounds nuw [10000 x i32], ptr %num, i64 0, i64 %indvars.iv69
  %6 = load i32, ptr %arrayidx80, align 4, !tbaa !5
  %cmp81 = icmp eq i32 %6, %max.0
  br i1 %cmp81, label %if.then82, label %for.inc89

if.then82:                                        ; preds = %for.body78
  %arrayidx84 = getelementptr inbounds nuw [10000 x [6 x i8]], ptr %c, i64 0, i64 %indvars.iv69
  call fastcc void @outlined_ir_func_0(ptr noundef nonnull %arrayidx84)
  br label %for.inc89

for.inc89:                                        ; preds = %if.then82, %for.body78
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  br label %for.cond76, !llvm.loop !18

if.end92:                                         ; preds = %for.cond76, %if.then71
  call void @llvm.lifetime.end.p0(i64 noundef 600, ptr noundef nonnull %input) #10
  call void @llvm.lifetime.end.p0(i64 noundef 60000, ptr noundef nonnull %c) #10
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %num) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %len) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3 align 2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr noundef nonnull %0) unnamed_addr #7 {
if.end92.exitStub:
  %call72 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %0)
  %call73 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call72, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
